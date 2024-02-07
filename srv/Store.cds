using { com.satinfotech.BusinessPartner as Bp } from '../db/schema';
service BusiStore{
     entity Store as projection on Bp.BusinessPartner;
}
annotate BusiStore.Store with @odata.draft.enabled;
annotate BusiStore.Store with {
   
    pin @assert.format: '[0-9]{6}';
}
   
annotate BusiStore.Store with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value : ID
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
        
        
    ],
    UI.SelectionFields: [ ID, name, add1, add2, city,state, pin],       
    UI.FieldGroup #StoreInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
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
            
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'BusinessInfoFacet',
            Label : 'Business Information',
            Target : '@UI.FieldGroup#StoreInformation',
        },
        
    ],
    
);