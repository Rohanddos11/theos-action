
#include <iostream>

// Ek generic function jo standard output deta hai
void originalFunction() {
    std::cout << "Reading from default directory..." << std::endl;
}

// Custom function jo redirection logic handle karega
void customFunction() {
    std::cout << "Redirecting request to a backup directory..." << std::endl;
}

int main() {
    // Function pointer jo default function ko point kar raha hai
    void (*functionPointer)() = originalFunction;
    
    std::cout << "Before Modification:" << std::endl;
    functionPointer(); // Yeh original path dikhayega

    // Conceptually pointer ko badalna (Hooking simulation)
    functionPointer = customFunction;

    std::cout << "\nAfter Modification:" << std::endl;
    functionPointer(); // Yeh redirected path dikhayega

    return 0;
}
