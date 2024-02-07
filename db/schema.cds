namespace com.satinfotech.BusinessPartner;
using { managed, cuid } from '@sap/cds/common';

@assert.unique:{
    BPid:[BPid]
}

entity BusinessPartner: cuid, managed {
    @title: 'BusinessPartnerNumber'
    BPid: String(10);
    @title: 'Name'
    name: String(30) @mandatory;
     @title: 'Address1'
    add1: String(30) @mandatory;
     @title: 'Address2'
    add2: String(30) @mandatory;
    @title: 'City'
    city: String(80) @mandatory;
    @cds.persistence.skip
    @title: 'STATE'
    state: String(10) @mandatory;
    @title: 'PINCode'
    pin: String(10) @mandatory;
    @title: 'Is_gstn_registered – Boolean'
    ISGSTIN: String(1);
    @title: ' GSTIN Number'
    GSTIN: String(10);
    @title: 'Is_vendor'
    Vendor:String(10);
    @title:'Is_customer'
    Cust:String(10);
}

entity Store{
    @title: 'Store ID '
    key id: String(10);
    @title: 'Name'
    name: String(10);
     @title: 'Address1'
    add1: String(30) @mandatory;
     @title: 'Address2'
    add2: String(30) @mandatory;
    @title: 'City'
    city: String(80) @mandatory;
    @cds.persistence.skip
    @title: 'STATE'
    state: String(10) @mandatory;
    @title: 'PINCode'
    pin: String(10) @mandatory; 
}
entity Product: cuid, managed {
    @title: 'ProductID'
    Pid: String(3);
    @title: 'ProductName'
    Pname: String(50);
    @title: 'Product Image URL'
    PIURL:String(10);
    @title: 'ProductCostPrice'
    Pcp: String(10);
     @title: 'ProductSellPrice'
    Psp: String(50);
}

/*entity Languages: cuid, managed {
    @title: 'Code'
    code: String(2);
    @title: 'Description'
    description: String(20);
}

entity Books: cuid, managed {
    @title: 'Name'
    code: String(30);
    @title: 'Description'
    description: String(100);
}
*/
