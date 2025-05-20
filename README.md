# Birthday-greeting-in-Java
This system consits of two main programs:

- client management;
- the greeting itself.

1. Client management

Put the source files ClientMgmt.java and PersonalData.java into a directory with sample.csv; latter contains client data in this structure: ID, name, age, gender, keywords. These five pieces are tab-separated; keywords are comma-separated.

You can compile and run simply:

prompt> javac ClientMgmt.java
prompt> java ClientMgmt

2. The greeting

Put the source code BirthdayGreeting.java into the same directory with the CSV file mentioned above. As a subdirectory, copy here java-llama.cpp

Compile:

javac -cp java-llama.cpp/src/main/java BirthdayGreeting.java

Run:

java -cp .:java-llama.cpp/src/main/java -Djava.library.path=java-llama.cpp/build/bin BirthdayGreeting
