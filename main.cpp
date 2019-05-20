#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <httpchannel.h>
#include <accountvalidator.h>
#include <QQmlContext>
#include <core.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    AccountValidator* validator = new AccountValidator();
    Core* core = new Core(validator);
    engine.rootContext()->setContextProperty(QLatin1String("validator"), validator);

    return app.exec();
}
