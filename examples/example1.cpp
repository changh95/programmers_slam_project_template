//
// Created by changh95 on 5/26/22.
//

#include <unistd.h
#include "module1/Class.hp
int main()

    EASY_PROFILER_ENABLE
    EASY_BLOCK("Outer block", profiler::colors::Black for (int i = 0; i < 10; ++i)
   
        EASY_BLOCK("Inner block", profiler::colors::Amber);
        usleep(100);
        EASY_END_BL
    }
    EASY_END_BLOCK

    profiler::dumpBlockFile("../test_profile.prof");
    return 0;
}
