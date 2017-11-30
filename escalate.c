#include <stdio.h>
#include <unistd.h>

int main(int argc, char** argv) {
  printf("%d", geteuid());
  char* const deploy[] = {"/bin/sh", 0};
  setuid(0);
  perror("setuid()");
  setgid(0);
  perror("setgid()");
  execv(deploy[0], deploy);
  perror("execv()");
  return -1;
}
