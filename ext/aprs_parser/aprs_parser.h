#ifndef APRS_PARSER_H
#define APRS_PARSER_H 1

#include "ruby.h"

static VALUE hello_world(VALUE self);
VALUE c_parse_aprs(VALUE self, VALUE input);
void c_fap_init(VALUE self);

#endif /* APRS_PARSER_H */
