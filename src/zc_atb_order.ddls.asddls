@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consunption Order'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zc_atb_order
  provider contract transactional_query
  as projection on zi_atb_order
{
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_atb_order_VH',  element: 'Orderid' }, useForValidation: true }]
  key Orderid,
      @ObjectModel.text.element: [ 'CustomerName' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_atb_customer_VH',  element: 'CustomerId' }, useForValidation: true }]
      Customer,
      CustomerName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_atb_vendor_VH',  element: 'VendorId' }, useForValidation: true }]
      @ObjectModel.text.element: [ 'VendorName' ]
      Vendor,
      VendorName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_atb_company_VH',  element: 'CompanyId' }, useForValidation: true }]
      @ObjectModel.text.element: [ 'CompanyName' ]
      Company,
      CompanyName,
      Usnam,
      /* Associations */
      _Itens: redirected to composition child zc_atb_order_it
}
