#include "httpchannel.h"
#include <QDebug>

HttpChannel::HttpChannel(QObject *parent) : QObject(parent)
{

}

HttpChannel *HttpChannel::instance()
{
    static HttpChannel *mInstance;
    if( !mInstance)
        mInstance = new HttpChannel();
    return mInstance;
}

bool HttpChannel::ConnectToServer(QString ip, int port)
{
    socket = new QTcpSocket();
    socket->connectToHost(ip, quint16(port));
    if(socket->isOpen())
    {
        qDebug()<<"Connected to server";
        connect(socket, &QTcpSocket::readyRead, this, &HttpChannel::ProcessRescievedData);
        return true;
    }
    return false;
}

void HttpChannel::TransmitData(QByteArray data)
{
    qDebug()<<"TransmittedData" << QString::fromLocal8Bit(data);
    socket->write(data);
}

void HttpChannel::ProcessRescievedData()
{
    QByteArray data = socket->readAll();
    emit ResponseRescieved(QString::fromLocal8Bit(data));
    qDebug()<<"Response Rescieved" << QString::fromLocal8Bit(data);
}
