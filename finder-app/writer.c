#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<syslog.h>

int main(int argc, char *argv[])
{
	if (argc != 3)
	{
		fprintf(stderr, "Please provide file path as 1st argument and string to be written a 2nd argument.");
		return 1;
	}

	FILE *fp = fopen(argv[1], "w");
	if (fp == NULL)
	{
		syslog (LOG_USER | LOG_ERR, "Error in opening file %s for writing", argv[1]);
		return 1;
	}

	fprintf(fp, "%s", argv[2]);

	syslog(LOG_USER | LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
	fclose(fp);
	return 0;
}
