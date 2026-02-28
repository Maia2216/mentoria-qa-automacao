*** Variables ***
${URL}                    https://www.saucedemo.com/
${USER}                   standard_user
${PASS}                   secret_sauce
${BROWSER}                chrome
${LOGIN_USER_INPUT}       id=user-name
${LOGIN_PASS_INPUT}       id=password
${LOGIN_BTN}              id=login-button

${ADD_TO_CARRINHO}        id=add-to-cart-sauce-labs-backpack
${SHOPPING_CART_LINK}     css=[data-test="shopping-cart-link"]
${CARRINHO_ITEM}          css=[data-test="shopping-cart-badge"]
${INVENTORY_LIST}         css=[data-test="inventory-list"]
${PRODUCT_NAME}           css=[data-test="inventory-item-name"]
${FIRST_ADD_TO_CART}      id=add-to-cart-sauce-labs-backpack

${BTN_CHECKOUT}           id=checkout

${INPUT_FIRSTNAME}        id=first-name
${INPUT_LASTNAME}         id=last-name
${INPUT_ZIPCODE}          id=postal-code
${BTN_CONTINUE}           id=continue

${CHECKOUT_FIRSTNAME}     Teste
${CHECKOUT_LASTNAME}      Silva
${CHECKOUT_ZIPCODE}       12345-678

${SUMARY_SUBTOTAL}        css=[data-test="subtotal-label"]
${SUMARY_TAX}             css=[data-test="tax-label"]
${SUMARY_TOTAL}           css=[data-test="total-label"]
${BTN_FINISH}             id=finish

${CHECKOUT_COMPLETE}      css=[data-test="complete-header"]