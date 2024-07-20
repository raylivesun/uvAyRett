' and the following disclaimer in the documentation and/or other materials
#lang "fblite"
declare function decl alias "name" (byref strname as string)  as string

#if 0
type name_list alias "name" 
     level as string
     names as name_list
     items as name_list
end type

type strname alias "name"
     level as string
     names as string
     items as string
end type 

function strname_create() as strname
    local result as strname
    set result to {level: "", names: "", items: ""}
    return result
end function

#endif

end
