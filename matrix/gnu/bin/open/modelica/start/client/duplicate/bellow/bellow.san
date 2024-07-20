
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#if 0
#include <fmi1/fmi1_types.h>
#include <fmi1/fmi1_import.h>
#include <fmi1/fmi1_model_description.h>
#include <fmi1/fmi1_functions.h>
#include <fmi1/fmi1_xml_interface.h>
#include <fmi1/fmi1.h>

#define FMU_PATH "path_to_your_fmu_file"

fmi1_model_description_t *modelDescription;
fmi1_real_t *realVars;
fmi1_integer_t *intVars;
fmi1_boolean_t *boolVars;
fmi1_string_t *strVars;


int main() {
oms_newModel("model");
oms_addSystem("model.root", "system_wc");
oms_addSubModel("model.root.A", "A.fmu");
oms_setReal("model.root.A.param1", "10");
oms_duplicateVariant("model", "varB");


// Load the FMU
fmi1_import_t *fmu = fmi1_import_create(FMU_PATH);
if (fmu == NULL) {
    printf("Error creating FMU import instance\n");
    return 1;
}

fmi1_status_t status = fmi1_import_instantiate(fmu, "model.root.A", "fmi1", "fmi1_model_exchange_model_description", &modelDescription);
if (status != fmi1_status_t::fmi1_OK) {
    printf("Error instantiating FMU: %s\n", fmi1_status_to_string(status));
    fmi1_import_free(fmu);
    return 1;
}

// Get variable references
realVars = fmi1_getReal(modelDescription, &status, "model.root.A.realVar1", 1);
intVars = fmi1_getInteger(modelDescription, &status, "model.root.A.intVar1", 1);
boolVars = fmi1_getBoolean(modelDescription, &status, "model.root.A.boolVar1", 1);
strVars = fmi1_getString(modelDescription, &status, "model.root.A.strVar1", 1);

if (status != fmi1_status_t::fmi1_OK) {
    printf("Error getting variable references: %s\n", fmi1_status_to_string(status));
    fmi1_import_free(fmu);
    return 1;
}

// Set initial values
realVars[0] = 1.0;
intVars[0] = 2;
boolVars[0] = true;
strcpy(strVars[0], "Hello, FMU!");

// Run simulation
for (int i = 0; i < 10; i++) {
    status = fmi1_import_doStep(fmu, 0.1, true, true);
    if (status != fmi1_status_t::fmi1_OK) {
        printf("Error during simulation step: %s\n", fmi1_status_to_string(status));
        break;
    }

    printf("Real variable: %f\n", realVars[0]);
    printf("Integer variable: %d\n", intVars[0]);
    printf("Boolean variable: %s\n", boolVars[0] ? "true" : "false");
    printf("String variable: %s\n", strVars[0]);
}

// Free resources
fmi1_import_free(fmu);
fmi1_free_model_description(modelDescription);
return 0;
}
#endif