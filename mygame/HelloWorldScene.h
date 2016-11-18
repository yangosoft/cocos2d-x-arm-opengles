#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

#include "cocos2d.h"

class HelloWorld : public cocos2d::Layer
{
public:
    static cocos2d::Scene* createScene();

    virtual bool init();

    // a selector callback
    void menuCloseCallback(cocos2d::Ref* pSender);

    // implement the "static create()" method manually
    //CREATE_FUNC(HelloWorld);

    static HelloWorld* create()
    {
        printf("CREATE!\n");
        HelloWorld *pRet = new HelloWorld();
        printf("OK!\n");
        if (pRet && pRet->init())
        {
            pRet->autorelease();
            return pRet;
        }
        else
        {
            delete pRet;
            pRet = nullptr;
            return nullptr;
        }
    }

    virtual void update(float delta) override;

private:

    static const int steps = 45;

    float mTime;

    float mScales[steps];
    cocos2d::Sprite* circles[60];
    int mCurrentStep;

};

#endif // __HELLOWORLD_SCENE_H__
