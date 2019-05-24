#ifndef CORE_H
#define CORE_H
#include <httpchannel.h>
#include <accountvalidator.h>
#include <QObject>

class Core : public QObject
{
    Q_OBJECT
    AccountValidator* mValidator = nullptr;
public:
    explicit Core(AccountValidator* validator, QObject *parent = nullptr);

signals:
    void HashChecked(QString response);

public slots:
    void HashProcess(QString hash);
    void ResponceRescieved(QString data);
};

#endif // CORE_H
