# Database_wk8_Assignment
This is a database for a restraunt hotel booking. It has the following relationships
# Relationships:
  # 1. Customers to Orders: One-to-Many

     One customer can place many orders

      Foreign key: customer_ID in Orders table

# 2. Price to MenuItems: One-to-One

     Each menu item has one price

     Foreign key: price_ID in MenuItems table

# 3. Orders to Order_Items: One-to-Many

    One order can contain many menu items

   Foreign key: order_ID in Order_Items table

# 4. MenuItems to Order_Items: One-to-Many

    One menu item can appear in many orders

   Foreign key: menu_item_ID in Order_Items table

# 5. Orders to Payments: One-to-One

     Each order has one payment

     Foreign key: order_ID in Payments table
# 6. Staff to Orders: Many-to-One

     Many staff members can be associated with one order (if needed)

     Foreign key: order_ID in Staff table

     Staff to Payments: Many-to-One

     Many staff members can process one payment

      Foreign key: payment_ID in Staff table    