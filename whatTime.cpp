// This file will print out what time it is
#include <iostream>
#include <string>
#include <fstream>

int main() {
    // Variable Declaration
    std::ifstream in_file("timeFile");
    std::string time;

    // Update timeFile
    system("python3 timePrint.py");

    // Get the time
    getline(in_file, time);

    // Print the time
    std::cout << "The current time is " << time << " (UTC)" << std::endl;

    // Exit
    in_file.close();
    return 0;
}