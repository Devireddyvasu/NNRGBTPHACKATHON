using { com.satinfotech.BusinessPartner as Bp } from '../db/schema';
service Business{
     entity Product as projection on Bp.Product;
}
annotate Business.Product with @odata.draft.enabled;
annotate Business.Product with {
   
    pin @assert.format: '[0-9]{6}';
}
   
annotate Business.Product with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value : Pid
        },
        {
            $Type : 'UI.DataField',
            
            Value : Pname
        },
        {
            $Type : 'UI.DataField',
            Value : PIURL
        },
        {
            $Type : 'UI.DataField',
            Value : Pcp
        },
        {
            $Type : 'UI.DataField',
            Value : Psp
        },
        
        
    ],
    UI.SelectionFields: [ Pid,Pname,PIURL,Pcp,Psp],       
    UI.FieldGroup #BusinessPartnerInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Pid,
            },
            {
                $Type : 'UI.DataField',
                Value : Pname,
            },
            {
                $Type : 'UI.DataField',
                Value : PIURL,
            },
            {
                $Type : 'UI.DataField',
                Value : Pcp,
            },
            {
                $Type : 'UI.DataField',
                Value : Psp,
            },
            
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ProductInfoFacet',
            Label : 'Product Information',
            Target : '@UI.FieldGroup#ProductInformation',
        },
        
    ],
    
);