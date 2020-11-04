
extern "C" {

    void  __stdcall Sleep(int);

    void wrapSleep(int _nmS){
        Sleep(_nmS);
    }


}
