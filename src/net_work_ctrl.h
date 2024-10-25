//
// Created by Chian on 10/22/2024.
//

#ifndef QUICKGAS_NET_WORK_CTRL_H
#define QUICKGAS_NET_WORK_CTRL_H

#include <QObject>
#include <string>

#include "libnetmanager.h"
using namespace std;

class NetWorkCtrl : public QObject{
Q_OBJECT
public:
    explicit NetWorkCtrl(QObject* parent = nullptr);
    ~NetWorkCtrl();

    void mvInitMqtt();
    void mbSendCmdByTopic(string topic, string msg);
    void mbSendCmdTest();
private:
    string host_ip_;
    string host_port_;
    string id_;
    string topic_;
};

#endif //QUICKGAS_NET_WORK_CTRL_H
