class Courses::BundleCodingFrontEnd < Courses::Course
  include Singleton

  def enable_for_user!(user)
    Courses::Course.course_for_slug("coding-fundamentals").enable_for_user!(user)
    Courses::Course.course_for_slug("front-end-fundamentals").enable_for_user!(user)

    # Put the user at the start.
    user.bootcamp_data.update!(active_part: 1)
  end

  def full_price = 149.99

  def slug = "bundle-coding-front-end"
  def template_slug = "bundle_coding_front_end"
  def name = "Coding & Front-End Fundamentals"

  # rubocop:disable Layout/LineLength
  def blurb = Markdown::Parse.(
    "Build rock solid coding fundamentals and front-end web development skills! Perfect for **total beginners** or anyone who wants to **build more solid foundations.**"
  )
  # rubocop:enable Layout/LineLength

  def stripe_prices = STRIPE_PRICES

  STRIPE_PRICES = {
    "DEFAULT" => { dollars: 99.00, stripe_id: "price_1QD0E7EoOT0Jqx0U9o3IND2o" },
    "AE" => { dollars: 79.99, stripe_id: "price_1QD0K5EoOT0Jqx0UVNgsQeBl" },
    "AF" => { dollars: 29.99, stripe_id: "price_1QD0HhEoOT0Jqx0UJhA4D3QK" },
    "AG" => { dollars: 99.99, stripe_id: "price_1QD0KYEoOT0Jqx0UzafkJgC6" },
    "AI" => { dollars: 99.99, stripe_id: "price_1QD0KnEoOT0Jqx0UuVkrZbv5" },
    "AL" => { dollars: 64.99, stripe_id: "price_1QD0JUEoOT0Jqx0UHqkt6BqL" },
    "AM" => { dollars: 54.99, stripe_id: "price_1QD0IwEoOT0Jqx0UaQABbKMp" },
    "AO" => { dollars: 34.99, stripe_id: "price_1QD0HlEoOT0Jqx0UjjJ23f87" },
    "AR" => { dollars: 29.99, stripe_id: "price_1QD0HVEoOT0Jqx0UEWzT8zbY" },
    "AS" => { dollars: 119.99, stripe_id: "price_1QD0L9EoOT0Jqx0U8x5eZ7Ne" },
    "AW" => { dollars: 99.99, stripe_id: "price_1QD0KmEoOT0Jqx0UnboBhZLr" },
    "AZ" => { dollars: 49.99, stripe_id: "price_1QD0IaEoOT0Jqx0UQDUukcuw" },
    "BA" => { dollars: 54.99, stripe_id: "price_1QD0InEoOT0Jqx0UacpHTizL" },
    "BD" => { dollars: 34.99, stripe_id: "price_1QD0HrEoOT0Jqx0U8wm4HssF" },
    "BG" => { dollars: 59.99, stripe_id: "price_1QD0JFEoOT0Jqx0UpJspqtsl" },
    "BH" => { dollars: 69.99, stripe_id: "price_1QD0JiEoOT0Jqx0UJfuzgvLN" },
    "BI" => { dollars: 39.99, stripe_id: "price_1QD0HyEoOT0Jqx0U62UHivIV" },
    "BJ" => { dollars: 49.99, stripe_id: "price_1QD0IZEoOT0Jqx0UR3pfT5jG" },
    "BL" => { dollars: 99.99, stripe_id: "price_1QD0KyEoOT0Jqx0U30Fk2zyT" },
    "BN" => { dollars: 59.99, stripe_id: "price_1QD0J7EoOT0Jqx0U9IKCyKV0" },
    "BO" => { dollars: 64.99, stripe_id: "price_1QD0JWEoOT0Jqx0Ue9jg4dIV" },
    "BR" => { dollars: 64.99, stripe_id: "price_1QD0JREoOT0Jqx0UjyHifaFg" },
    "BS" => { dollars: 124.99, stripe_id: "price_1QD0LNEoOT0Jqx0UD4wCPlBt" },
    "BT" => { dollars: 34.99, stripe_id: "price_1QD0HnEoOT0Jqx0UXlZ06TtK" },
    "BW" => { dollars: 54.99, stripe_id: "price_1QD0IuEoOT0Jqx0UzMdiz5DJ" },
    "BY" => { dollars: 34.99, stripe_id: "price_1QD0HqEoOT0Jqx0UofW0j32M" },
    "CD" => { dollars: 49.99, stripe_id: "price_1QD0ISEoOT0Jqx0UvNotW2pt" },
    "CF" => { dollars: 59.99, stripe_id: "price_1QD0JAEoOT0Jqx0UO0bue6HA" },
    "CG" => { dollars: 54.99, stripe_id: "price_1QD0IiEoOT0Jqx0U2mofdiac" },
    "CI" => { dollars: 49.99, stripe_id: "price_1QD0IdEoOT0Jqx0UCQsIUpD1" },
    "CK" => { dollars: 119.99, stripe_id: "price_1QD0LBEoOT0Jqx0UXoHUdnuO" },
    "CL" => { dollars: 69.99, stripe_id: "price_1QD0JdEoOT0Jqx0U0Db0LvcB" },
    "CM" => { dollars: 44.99, stripe_id: "price_1QD0IBEoOT0Jqx0Urrtwh1w7" },
    "CN" => { dollars: 74.99, stripe_id: "price_1QD0JvEoOT0Jqx0U7fbwVDZv" },
    "CO" => { dollars: 49.99, stripe_id: "price_1QD0ILEoOT0Jqx0U8yUXhAG5" },
    "CR" => { dollars: 64.99, stripe_id: "price_1QD0JXEoOT0Jqx0Uqzy6cN34" },
    "CU" => { dollars: 99.99, stripe_id: "price_1QD0KqEoOT0Jqx0ULEQoaJDz" },
    "CV" => { dollars: 69.99, stripe_id: "price_1QD0JmEoOT0Jqx0U6p5aa1mW" },
    "CW" => { dollars: 99.99, stripe_id: "price_1QD0KbEoOT0Jqx0UkwiRSaSk" },
    "CY" => { dollars: 89.99, stripe_id: "price_1QD0KNEoOT0Jqx0UU4TYIfIT" },
    "CZ" => { dollars: 79.99, stripe_id: "price_1QD0K1EoOT0Jqx0UR5tjt9GO" },
    "DJ" => { dollars: 74.99, stripe_id: "price_1QD0JqEoOT0Jqx0UGasqWZ4R" },
    "DM" => { dollars: 74.99, stripe_id: "price_1QD0JtEoOT0Jqx0UHBla48xn" },
    "DO" => { dollars: 59.99, stripe_id: "price_1QD0J4EoOT0Jqx0Uzy0iyF5d" },
    "DZ" => { dollars: 44.99, stripe_id: "price_1QD0IDEoOT0Jqx0UWEnFbSx8" },
    "EC" => { dollars: 59.99, stripe_id: "price_1QD0JDEoOT0Jqx0UrP3unanW" },
    "EE" => { dollars: 89.99, stripe_id: "price_1QD0KPEoOT0Jqx0UEtVaAIwj" },
    "EG" => { dollars: 29.99, stripe_id: "price_1QD0HNEoOT0Jqx0UJLForzZX" },
    "ES" => { dollars: 99.99, stripe_id: "price_1QD0KaEoOT0Jqx0UZ8fmp23f" },
    "ET" => { dollars: 29.99, stripe_id: "price_1QD0HYEoOT0Jqx0Uul039R5L" },
    "FJ" => { dollars: 59.99, stripe_id: "price_1QD0J9EoOT0Jqx0U7yrV6aeH" },
    "GD" => { dollars: 99.99, stripe_id: "price_1QD0KsEoOT0Jqx0UWhle0V4k" },
    "GE" => { dollars: 49.99, stripe_id: "price_1QD0IFEoOT0Jqx0UDJibqV79" },
    "GH" => { dollars: 29.99, stripe_id: "price_1QD0HfEoOT0Jqx0UiVYyyLQQ" },
    "GM" => { dollars: 34.99, stripe_id: "price_1QD0HoEoOT0Jqx0UzSY0294C" },
    "GN" => { dollars: 59.99, stripe_id: "price_1QD0IzEoOT0Jqx0UeoOGehjN" },
    "GP" => { dollars: 99.99, stripe_id: "price_1QD0KtEoOT0Jqx0UBbdQeu66" },
    "GQ" => { dollars: 54.99, stripe_id: "price_1QD0ItEoOT0Jqx0Ub9CjHmfH" },
    "GR" => { dollars: 89.99, stripe_id: "price_1QD0KGEoOT0Jqx0U1hWwPRSC" },
    "GS" => { dollars: 99.99, stripe_id: "price_1QD0L6EoOT0Jqx0UwAXnXkrp" },
    "GT" => { dollars: 59.99, stripe_id: "price_1QD0JLEoOT0Jqx0UUqdJFhNT" },
    "GY" => { dollars: 54.99, stripe_id: "price_1QD0IoEoOT0Jqx0UyoAxB21Y" },
    "HK" => { dollars: 99.99, stripe_id: "price_1QD0KfEoOT0Jqx0U4Ckd0xy2" },
    "HN" => { dollars: 64.99, stripe_id: "price_1QD0JTEoOT0Jqx0UaivNEh50" },
    "HR" => { dollars: 69.99, stripe_id: "price_1QD0JjEoOT0Jqx0U1z3Lv8df" },
    "HT" => { dollars: 79.99, stripe_id: "price_1QD0K8EoOT0Jqx0UMIVZEkJk" },
    "HU" => { dollars: 69.99, stripe_id: "price_1QD0JgEoOT0Jqx0UO4qnguWH" },
    "ID" => { dollars: 44.99, stripe_id: "price_1QD0I7EoOT0Jqx0URwqg6koL" },
    "IN" => { dollars: 34.99, stripe_id: "price_1QD0HvEoOT0Jqx0UfNOBFxLT" },
    "IQ" => { dollars: 64.99, stripe_id: "price_1QD0JZEoOT0Jqx0UdwtSpXam" },
    "IT" => { dollars: 99.99, stripe_id: "price_1QD0KdEoOT0Jqx0UVnNCDrdJ" },
    "JM" => { dollars: 84.99, stripe_id: "price_1QD0KDEoOT0Jqx0UMsONGi5f" },
    "JO" => { dollars: 64.99, stripe_id: "price_1QD0JPEoOT0Jqx0U2K7cNdmG" },
    "JP" => { dollars: 94.99, stripe_id: "price_1QD0KUEoOT0Jqx0USpQaj1Su" },
    "KE" => { dollars: 64.99, stripe_id: "price_1QD0JaEoOT0Jqx0U8o0mWk2B" },
    "KG" => { dollars: 34.99, stripe_id: "price_1QD0HtEoOT0Jqx0U3MgjqxVZ" },
    "KH" => { dollars: 49.99, stripe_id: "price_1QD0IYEoOT0Jqx0UYueS1OHB" },
    "KI" => { dollars: 89.99, stripe_id: "price_1QD0KMEoOT0Jqx0UeuVJiOxo" },
    "KM" => { dollars: 59.99, stripe_id: "price_1QD0JHEoOT0Jqx0Ug8ujvIQK" },
    "KN" => { dollars: 99.99, stripe_id: "price_1QD0KzEoOT0Jqx0UoZfYZ0tn" },
    "KR" => { dollars: 89.99, stripe_id: "price_1QD0KEEoOT0Jqx0UXA3VoNyS" },
    "KW" => { dollars: 94.99, stripe_id: "price_1QD0KXEoOT0Jqx0U8focQR7c" },
    "KY" => { dollars: 99.99, stripe_id: "price_1QD0KpEoOT0Jqx0UViHXHnJY" },
    "KZ" => { dollars: 44.99, stripe_id: "price_1QD0IAEoOT0Jqx0UuGxcu5Px" },
    "LA" => { dollars: 29.99, stripe_id: "price_1QD0HXEoOT0Jqx0UKSl2Gy0B" },
    "LB" => { dollars: 29.99, stripe_id: "price_1QD0HMEoOT0Jqx0UVt7dQXD6" },
    "LC" => { dollars: 99.99, stripe_id: "price_1QD0L1EoOT0Jqx0U9XgSMII5" },
    "LK" => { dollars: 29.99, stripe_id: "price_1QD0HaEoOT0Jqx0Uzqhhgs60" },
    "LS" => { dollars: 49.99, stripe_id: "price_1QD0INEoOT0Jqx0U58d3e8gy" },
    "LT" => { dollars: 79.99, stripe_id: "price_1QD0JzEoOT0Jqx0Uq7YuBDUU" },
    "LV" => { dollars: 79.99, stripe_id: "price_1QD0K4EoOT0Jqx0UXNTi9VVt" },
    "LY" => { dollars: 54.99, stripe_id: "price_1QD0IrEoOT0Jqx0U9va727Pk" },
    "MA" => { dollars: 59.99, stripe_id: "price_1QD0J2EoOT0Jqx0USROcAiSk" },
    "MD" => { dollars: 59.99, stripe_id: "price_1QD0J5EoOT0Jqx0U2jO1pp7x" },
    "ME" => { dollars: 59.99, stripe_id: "price_1QD0J1EoOT0Jqx0UyEmWHqKN" },
    "MF" => { dollars: 99.99, stripe_id: "price_1QD0L2EoOT0Jqx0UjHdtpsOx" },
    "MK" => { dollars: 49.99, stripe_id: "price_1QD0IMEoOT0Jqx0U7BOHZ9Zt" },
    "ML" => { dollars: 49.99, stripe_id: "price_1QD0IPEoOT0Jqx0Upl1QjJq2" },
    "MM" => { dollars: 29.99, stripe_id: "price_1QD0HUEoOT0Jqx0UVatDg0lW" },
    "MN" => { dollars: 49.99, stripe_id: "price_1QD0IJEoOT0Jqx0UOFPaGVD1" },
    "MO" => { dollars: 89.99, stripe_id: "price_1QD0KJEoOT0Jqx0UPuTcr1Lm" },
    "MQ" => { dollars: 99.99, stripe_id: "price_1QD0KvEoOT0Jqx0UCi1k19Tr" },
    "MR" => { dollars: 39.99, stripe_id: "price_1QD0I5EoOT0Jqx0UTvqQ30lj" },
    "MS" => { dollars: 99.99, stripe_id: "price_1QD0KwEoOT0Jqx0UNsD5o2Ff" },
    "MT" => { dollars: 89.99, stripe_id: "price_1QD0KREoOT0Jqx0UjWAMWI19" },
    "MU" => { dollars: 49.99, stripe_id: "price_1QD0IfEoOT0Jqx0U6XZoOQgw" },
    "MV" => { dollars: 74.99, stripe_id: "price_1QD0JwEoOT0Jqx0UvWFGIBhq" },
    "MX" => { dollars: 69.99, stripe_id: "price_1QD0JpEoOT0Jqx0UGvkOti0z" },
    "MY" => { dollars: 49.99, stripe_id: "price_1QD0IQEoOT0Jqx0U6VT1JxC7" },
    "MZ" => { dollars: 54.99, stripe_id: "price_1QD0IkEoOT0Jqx0UENFBz3uk" },
    "NA" => { dollars: 59.99, stripe_id: "price_1QD0JGEoOT0Jqx0U6rhxnlNA" },
    "NE" => { dollars: 29.99, stripe_id: "price_1QD0HSEoOT0Jqx0Up2wqNZnt" },
    "NG" => { dollars: 29.99, stripe_id: "price_1QD0HREoOT0Jqx0UL0O7I3rK" },
    "NI" => { dollars: 44.99, stripe_id: "price_1QD0I8EoOT0Jqx0UY7XGrLeZ" },
    "NP" => { dollars: 39.99, stripe_id: "price_1QD0HwEoOT0Jqx0UhPd1mKg6" },
    "NU" => { dollars: 119.99, stripe_id: "price_1QD0LFEoOT0Jqx0Uh3ntrde8" },
    "OM" => { dollars: 64.99, stripe_id: "price_1QD0JcEoOT0Jqx0UrRqZxZac" },
    "PA" => { dollars: 69.99, stripe_id: "price_1QD0JfEoOT0Jqx0UJ98HJhY2" },
    "PE" => { dollars: 74.99, stripe_id: "price_1QD0JsEoOT0Jqx0UGgHUxu07" },
    "PF" => { dollars: 119.99, stripe_id: "price_1QD0LDEoOT0Jqx0U2XKLV5Ms" },
    "PG" => { dollars: 89.99, stripe_id: "price_1QD0KKEoOT0Jqx0UFiK1zR04" },
    "PH" => { dollars: 49.99, stripe_id: "price_1QD0ITEoOT0Jqx0Uya73emE4" },
    "PK" => { dollars: 29.99, stripe_id: "price_1QD0HbEoOT0Jqx0UQAWJr347" },
    "PL" => { dollars: 69.99, stripe_id: "price_1QD0JlEoOT0Jqx0UGb4KmmHS" },
    "PN" => { dollars: 119.99, stripe_id: "price_1QD0LHEoOT0Jqx0U1q5h2X8v" },
    "PR" => { dollars: 114.99, stripe_id: "price_1QD0L7EoOT0Jqx0UzTXln0Y0" },
    "PS" => { dollars: 29.99, stripe_id: "price_1QD0HPEoOT0Jqx0UDpBPHf9J" },
    "PT" => { dollars: 84.99, stripe_id: "price_1QD0KBEoOT0Jqx0UEfTU2BsJ" },
    "PW" => { dollars: 124.99, stripe_id: "price_1QD0LPEoOT0Jqx0UDhpjT9WE" },
    "PY" => { dollars: 34.99, stripe_id: "price_1QD0HjEoOT0Jqx0U6HTdCyoB" },
    "QA" => { dollars: 99.99, stripe_id: "price_1QD0KiEoOT0Jqx0ULAEtKyfX" },
    "RO" => { dollars: 59.99, stripe_id: "price_1QD0IxEoOT0Jqx0UN3Lgo3lO" },
    "RS" => { dollars: 59.99, stripe_id: "price_1QD0JBEoOT0Jqx0UQo4xLgso" },
    "RW" => { dollars: 39.99, stripe_id: "price_1QD0I1EoOT0Jqx0UnlN1ux3W" },
    "SA" => { dollars: 69.99, stripe_id: "price_1QD0JnEoOT0Jqx0UYyYFDcWJ" },
    "SB" => { dollars: 99.99, stripe_id: "price_1QD0KkEoOT0Jqx0Uxgj2bIKW" },
    "SC" => { dollars: 79.99, stripe_id: "price_1QD0K2EoOT0Jqx0UaFyQmwKp" },
    "SD" => { dollars: 29.99, stripe_id: "price_1QD0HHEoOT0Jqx0U6D1SIp4Y" },
    "SG" => { dollars: 89.99, stripe_id: "price_1QD0KSEoOT0Jqx0UBFsqFVqX" },
    "SI" => { dollars: 89.99, stripe_id: "price_1QD0KHEoOT0Jqx0UcejiS495" },
    "SK" => { dollars: 79.99, stripe_id: "price_1QD0K7EoOT0Jqx0UXdLezrto" },
    "SN" => { dollars: 54.99, stripe_id: "price_1QD0IgEoOT0Jqx0U6tKfuU49" },
    "SR" => { dollars: 54.99, stripe_id: "price_1QD0IqEoOT0Jqx0Uhkw2xCgW" },
    "SV" => { dollars: 59.99, stripe_id: "price_1QD0JNEoOT0Jqx0UEPahlqS6" },
    "SX" => { dollars: 99.99, stripe_id: "price_1QD0L4EoOT0Jqx0UGYVJdc3e" },
    "SZ" => { dollars: 49.99, stripe_id: "price_1QD0IWEoOT0Jqx0UmndPznr1" },
    "TD" => { dollars: 54.99, stripe_id: "price_1QD0IlEoOT0Jqx0UgVsKQHbg" },
    "TH" => { dollars: 49.99, stripe_id: "price_1QD0IGEoOT0Jqx0UQOcShV8X" },
    "TK" => { dollars: 119.99, stripe_id: "price_1QD0LKEoOT0Jqx0Un21xYDQJ" },
    "TL" => { dollars: 49.99, stripe_id: "price_1QD0IHEoOT0Jqx0U9Ncscqwq" },
    "TN" => { dollars: 39.99, stripe_id: "price_1QD0I4EoOT0Jqx0Uj71WcpdO" },
    "TO" => { dollars: 94.99, stripe_id: "price_1QD0KVEoOT0Jqx0Un5hRUo2t" },
    "TR" => { dollars: 29.99, stripe_id: "price_1QD0HdEoOT0Jqx0UAKXl3aAD" },
    "TT" => { dollars: 84.99, stripe_id: "price_1QD0KAEoOT0Jqx0UBGmExDdQ" },
    "TZ" => { dollars: 39.99, stripe_id: "price_1QD0I2EoOT0Jqx0Um57Msci0" },
    "UA" => { dollars: 39.99, stripe_id: "price_1QD0HzEoOT0Jqx0Uk8Rzr9FN" },
    "UG" => { dollars: 49.99, stripe_id: "price_1QD0IVEoOT0Jqx0URcxC88wa" },
    "UY" => { dollars: 99.99, stripe_id: "price_1QD0KgEoOT0Jqx0UZ3X1LnLY" },
    "UZ" => { dollars: 29.99, stripe_id: "price_1QD0HJEoOT0Jqx0Ucyzuw9Ig" },
    "VC" => { dollars: 74.99, stripe_id: "price_1QD0JyEoOT0Jqx0UNses32bW" },
    "VE" => { dollars: 19.99, stripe_id: "price_1QD0HKEoOT0Jqx0UpCpCccOe" },
    "VN" => { dollars: 49.99, stripe_id: "price_1QD0IcEoOT0Jqx0U9X5t7f9g" },
    "WF" => { dollars: 119.99, stripe_id: "price_1QD0LMEoOT0Jqx0UgQNm1PNg" },
    "WS" => { dollars: 119.99, stripe_id: "price_1QD0LJEoOT0Jqx0UcRzcv24s" },
    "ZA" => { dollars: 59.99, stripe_id: "price_1QD0JJEoOT0Jqx0UqgmqHcAl" },
    "ZM" => { dollars: 34.99, stripe_id: "price_1QD0HkEoOT0Jqx0UGzBbUxjx" }
  }.freeze
end
