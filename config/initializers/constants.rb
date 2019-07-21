ORDER_STATUES = {
    CREATED: 1,
    PAID: 2,
    BUYER_DELIVERED: 3,
    CUSTOMER_REVEIVED: 4,
    ADMIN_ACKNOWLEDGED: 5,
    BUYER_RECEIVED_PAYMENT: 6
}.freeze

PRODUCT_STATUS = {
    CREATED: 1,
    APPROVED: 2,
    REJECTED: 3,
    PICK_UP: 4,
}.freeze

USER_TYPES = {
    MEMBER: 'member',
    ADMIN: 'admin'
}.freeze


COUNTRIES = [
    {name: 'MALAYSIA', code: 'MY'},
    {name: 'JAPAN', code: 'jp'}
].freeze