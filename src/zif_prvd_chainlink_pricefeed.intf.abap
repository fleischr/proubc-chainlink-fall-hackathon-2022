INTERFACE zif_prvd_chainlink_pricefeed
  PUBLIC .

  TYPES: BEGIN OF ty_chainlink_pricefeed_result,
            from_currency TYPE waers,
            to_currency TYPE waers,
            smartcontractaddress TYPE zproubc_smartcontract_addr,
            txn_hash TYPE string,
            txn_processed_at TYPE timestampl,
            user_responsible TYPE sy-uname,
            walletid TYPE zproubc_smartcontract_addr,
         END OF ty_chainlink_pricefeed_result.
         TYPES: tty_pricefeed_results TYPE STANDARD TABLE OF ty_chainlink_pricefeed_result.

  METHODS:  prvd_authenticate IMPORTING iv_authtype TYPE char1
                                        iv_prvduser TYPE string OPTIONAL
                                        iv_prvduserpw TYPE string OPTIONAL,
            call_chainlink_pricefeeds,
            generate_s4_market_rate_file,
            read_market_rate_file,
            update_s4hana_market_rates.

ENDINTERFACE.