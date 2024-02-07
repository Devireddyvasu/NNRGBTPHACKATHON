using { com.satinfotech.BusinessPartner as Bp } from '../db/schema';
service Business{
     entity BusinessPartner as projection on Bp.BusinessPartner;
}
annotate Business.BusinessPartner with @odata.draft.enabled;
annotate Business.BusinessPartner with {
   
    pin @assert.format: '[0-9]{6}';
}
   
annotate Business.BusinessPartner with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value : BPid
        },
        {
            $Type : 'UI.DataField',
            Label: 'Gender',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : add1
        },
        {
            $Type : 'UI.DataField',
            Value : add2
        },
        {
            $Type : 'UI.DataField',
            Value : city
        },
        {
            $Type : 'UI.DataField',
            Value : state
        },
        {
            $Type : 'UI.DataField',
            Value : pin
        },
        {
            $Type : 'UI.DataField',
            Value : ISGSTIN
        },
        {
            $Type : 'UI.DataField',
            Value : GSTIN
        },
        {
            $Type : 'UI.DataField',
            Value : Vendor
        },
        {
            $Type : 'UI.DataField',
            Value : Cust
        },
        
    ],
    UI.SelectionFields: [ BPid, name, add1, add2, city,state, pin,ISGSTIN,GSTIN,Vendor,Cust],       
    UI.FieldGroup #BusinessPartnerInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : BPid,
            },
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : add1,
            },
            {
                $Type : 'UI.DataField',
                Value : add2,
            },
            {
                $Type : 'UI.DataField',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Value : state,
            },
            {
                $Type : 'UI.DataField',
                Value : pin,
            },
            {
                $Type: 'UI.DataField',
                Value: ISGSTIn,
            },
            {
                $Type: 'UI.DataField',
                Value: GSTIn,
            },
            {
                $Type: 'UI.DataField',
                Value: Vendor
            },
            {
                $Type: 'UI.DataField',
                Value: Cust
            },

        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'BusinessInfoFacet',
            Label : 'Business Information',
            Target : '@UI.FieldGroup#StudentInformation',
        },
        
    ],
    
);