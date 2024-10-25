//
// Created by Chian on 10/23/2024.
//

#ifndef QUICKGAS_PTZ_CTRL_H
#define QUICKGAS_PTZ_CTRL_H

#include <QObject>

class PtzCtrl: public QObject{
    Q_OBJECT
public:
    explicit PtzCtrl(QObject* parent = nullptr);
    ~PtzCtrl();
};

#endif //QUICKGAS_PTZ_CTRL_H
