%module units0
%include <std_string.i>
%include <std_vector.i>
%include <std_pair.i>

%{
#include <units-0/units.h>
%}

%template(spair) std::pair<std::string, std::string>;
%template(pair_vector) std::vector<std::pair<std::string, std::string> >;

%include <units-0/units.h>


