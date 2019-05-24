#ifndef HTTPCHANNEL_H
#define HTTPCHANNEL_H

#include <QObject>
#include <QTcpSocket>

class HttpChannel : public QObject
{
    Q_OBJECT
private:
    explicit HttpChannel(QObject *parent = nullptr);
    QTcpSocket* socket;

public:
    static HttpChannel* instance();
    bool ConnectToServer(QString ip, int port);


signals:
    void ResponseRescieved(QString data);
public slots:
    void TransmitData(QByteArray data);
    void ProcessRescievedData();
};

#endif // HTTPCHANNEL_H
