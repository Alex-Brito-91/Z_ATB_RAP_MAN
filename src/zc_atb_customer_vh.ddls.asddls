@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Value Help Customer'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_ATB_CUSTOMER_VH
  as select from ztatb_customer
{
      @ObjectModel.text.element: [ 'Name' ]
      @EndUserText.label: 'ID Cliente'
  key customer_id as CustomerId,

      @Semantics.text: true
      @EndUserText.label: 'Nome Cliente'
      name        as Name
}
group by
  customer_id,
  name
