#ifndef HTTPCHANNEL_H
#define HTTPCHANNEL_H

#include <QObject>

class HttpChannel : public QObject
{
    Q_OBJECT
public:
    explicit HttpChannel(QObject *parent = nullptr);

signals:

public slots:
};

#endif // HTTPCHANNEL_H