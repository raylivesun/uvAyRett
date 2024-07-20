#lang "fblite"
declare function decl alias "templates" (byval names as string) as string 

#if 0
type names alias "templates"

function templates(names as names): string
    return names.join(", ")
    'Returns a comma-separated string of the given names'

end function


' Testing the function
let names = ["Alice", "Bob", "Charlie"]
print templates(names)  ' Outputs: Alice, Bob, Charlie

end type


' Testing the alias
let aliasNames = ["Alice", "Bob", "Charlie"]
print templates(aliasNames)  ' Outputs: Alice, Bob, Charlie

#endif

end
