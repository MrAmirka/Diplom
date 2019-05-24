#include "core.h"
#include <httpchannel.h>

Core::Core(AccountValidator *validator, QObject *parent) : QObject(parent)
{
    QString ip = "127.0.0.1";
    int port = 8080;

    HttpChannel* channel = HttpChannel::instance();
    channel->ConnectToServer(ip, port);
    mValidator = validator;
    connect(mValidator, &AccountValidator::HashGenerated, this, &Core::HashProcess);
    connect(this, &Core::HashChecked, mValidator, &AccountValidator::HashChecked);
    connect(channel, &HttpChannel::ResponseRescieved, this, &Core::ResponceRescieved);
}

void Core::HashProcess(QString hash)
{
    HttpChannel* channel = HttpChannel::instance();
    channel->TransmitData(hash.toLocal8Bit());
}

void Core::ResponceRescieved(QString data)
{
    emit HashChecked(data);
}
