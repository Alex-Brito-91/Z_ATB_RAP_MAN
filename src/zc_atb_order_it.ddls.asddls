@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consunption Order Itens'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity zc_atb_order_it
  as projection on zi_atb_order_it
{
  key OrderId,
  key Item,
      @ObjectModel.text.element: [ 'Description' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_atb_product_VH', element: 'ProductId' }, useForValidation: true }]
      Product,
      Description,
      Value,
      Currency,
      Quantity,
      SalesPrice,
      UnityMeasure,
      /* Associations */
      _Order: redirected to parent zc_atb_order,
      _Product
}
