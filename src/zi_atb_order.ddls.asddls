@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Composition Order'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zi_atb_order
  as select from ZR_ATB_ORDER
  composition [1..*] of zi_atb_order_it    as _Itens
  association [1..1] to ZC_ATB_COMPANY_VH  as _Company  on $projection.Company = _Company.CompanyId
  association [1..1] to ZC_ATB_CUSTOMER_VH as _Customer on $projection.Customer = _Customer.CustomerId
  association [1..1] to ZC_ATB_VENDOR_VH   as _Vendor   on $projection.Vendor = _Vendor.VendorId
{
  key Orderid,
      Customer,
      _Customer.Name as CustomerName,
      Vendor,
      _Vendor.Name   as VendorName,
      Company,
      _Company.Name  as CompanyName,
      Usnam,
      _Itens,
      _Company,
      _Customer,
      _Vendor
}
