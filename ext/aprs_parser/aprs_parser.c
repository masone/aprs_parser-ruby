#include "aprs_parser.h"
#include "fap.h"

VALUE rb_mAprsParser;

void Init_aprs_parser(void)
{
  rb_mAprsParser = rb_define_module("AprsParser");
  rb_define_singleton_method(rb_mAprsParser, "hello_world", hello_world, 0);
  rb_define_singleton_method(rb_mAprsParser, "parse_aprs", c_parse_aprs, 1);  
  //rb_define_singleton_method(rb_mAprsParser, "init", c_fap_init, 0);    
}       

void c_fap_init(VALUE self)
{
    return fap_init();
}

VALUE c_parse_aprs(VALUE self, VALUE input)
{                                
    //fap_init();
    
    fap_packet_t* packet;     
    unsigned int input_len = (unsigned int)strlen((const char*)input);
    packet = fap_parseaprs((const char*)input, input_len, 0); // http://www.pakettiradio.net/libfap/docs/d3/de0/fap_8c.html#8bdf9577258c5208800376c36f74f48d
    /*
    if ( packet->error_code )
    {
            //printf("Failed to parse packet (%s): %s\n", input, fap_explain_error(*packet->error_code));
    }
    else if ( packet->src_callsign )
    {
            //printf("Got packet from %s.\n", packet->src_callsign);
    }       
    // rb_raise(rb_eRuntimeError, "target must respond to 
    fap_free(packet);
    fap_cleanup();
    */
    return input;
}

static VALUE hello_world(VALUE self)
{
  return rb_str_new2("hello world");
}
