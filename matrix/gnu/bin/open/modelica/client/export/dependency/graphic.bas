#lang "fblite"
declare function decl alias "graphics" (byval graph as integer) as integer 

type graph alias "graphics"
     names as integer
     colors as integer
     edges as integer
     vertices as integer
     directed as boolean
     weighted as boolean
end type 

end 

