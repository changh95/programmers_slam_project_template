//
// Created by changh95 on 5/26/22.
//

#include "module1/Class.hpp"


int main()
{
    EASY_PROFILER_ENABLE;
    spdlog::info("Spdlog is activated!");

    EASY_BLOCK("Block1", profiler::colors::Amber);
    for (int i = 0; i < 100000; ++i)
    {
        usleep(10);
    }
    EASY_END_BLOCK

    profiler::dumpBlocksToFile("../test_profile.prof");
    return 0;
}