#include <stdio.h>
#include <gwenhywfar/gwenhywfar.h>

int main(int argc, const char *argv[]) {
  int major, minor, patchlevel, build;
  GWEN_Init();
  GWEN_Version(&major, &minor, &patchlevel, &build);
  GWEN_Fini();
  printf("Successfully tested Gwenhywfar %d.%d.%d.%d\n",
         major, minor, patchlevel, build);
  return 0;
}
