model templates "Description"
    
    Real example = 4.8;
    Real types = 4.6;
    Real methods = 4.5;
    Real complexity = 4.4;
    Real maintainability = 4.2;
    Real documentation = 4.0;
    Real readability = 3.8;
    Real maintainability_index = (types + methods + complexity + maintainability + documentation + readability);

equation

    maintainability_index = (example + types + methods + complexity + maintain_index) / 6;

end templates;