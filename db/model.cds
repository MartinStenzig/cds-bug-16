namespace ao.test;

using {cuid} from '@sap/cds/common';

entity Jobs : cuid {
    workOrderId : String(50);
    description : localized String(500);
}
