// ignore_for_file: prefer_const_constructors

import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/illinois/alcohol/alcohol_binding.dart';
import 'package:brainbook/screens/illinois/alcohol/alcohol_screen.dart';
import 'package:brainbook/screens/illinois/alcohol_detail/alcohol_detail_binding.dart';
import 'package:brainbook/screens/illinois/alcohol_detail/alcohol_detail_screen.dart';
import 'package:brainbook/screens/illinois/bellwood_pd/bellwood_pd_binding.dart';
import 'package:brainbook/screens/illinois/cicero_pd/cicero_pd_binding.dart';
import 'package:brainbook/screens/illinois/common_codes/common_codes_binding.dart';
import 'package:brainbook/screens/illinois/common_codes/common_codes_screen.dart';
import 'package:brainbook/screens/illinois/domestic_violence/domestic_violence_binding.dart';
import 'package:brainbook/screens/illinois/domestic_violence/domestic_violence_screen.dart';
import 'package:brainbook/screens/illinois/dupage_county/dupage_county_binding.dart';
import 'package:brainbook/screens/illinois/dupage_county/dupage_county_screen.dart';
import 'package:brainbook/screens/illinois/grayslake_pd/grayslake_pd_binding.dart';
import 'package:brainbook/screens/illinois/grayslake_pd/grayslake_pd_screen.dart';
import 'package:brainbook/screens/illinois/hometown_pd/hometown_pd_binding.dart';
import 'package:brainbook/screens/illinois/hometown_pd/hometown_pd_screen.dart';
import 'package:brainbook/screens/illinois/isp_districts/isp_districts_binding.dart';
import 'package:brainbook/screens/illinois/isp_districts/isp_districts_screen.dart';
import 'package:brainbook/screens/illinois/isp_districts_details/isp_districts_details_binding.dart';
import 'package:brainbook/screens/illinois/isp_districts_details/isp_districts_details_screen.dart';
import 'package:brainbook/screens/illinois/joliet_pd/joliet_pd_binding.dart';
import 'package:brainbook/screens/illinois/joliet_pd/joliet_pd_screen.dart';
import 'package:brainbook/screens/illinois/lake_county/lake_county_binding.dart';
import 'package:brainbook/screens/illinois/lake_county/lake_county_screen.dart';
import 'package:brainbook/screens/illinois/naperville/naperville_binding.dart';
import 'package:brainbook/screens/illinois/rockford_pd/rockford_pd_binding.dart';
import 'package:brainbook/screens/illinois/rockford_pd/rockford_pd_screen.dart';
import 'package:brainbook/screens/illinois/romeoville_pd/romeoville_pd_binding.dart';
import 'package:brainbook/screens/illinois/romeoville_pd/romeoville_pd_screen.dart';
import 'package:brainbook/screens/illinois/springfield/springfield_binding.dart';
import 'package:brainbook/screens/illinois/springfield/springfield_screen.dart';
import 'package:brainbook/screens/illinois/weapons/weapons_binding.dart';
import 'package:brainbook/screens/illinois/weapons/weapons_screen.dart';
import 'package:brainbook/screens/illinois/weapons_detail/weapons_detail_binding.dart';
import 'package:brainbook/screens/illinois/weapons_detail/weapons_detail_screen.dart';
import 'package:brainbook/screens/illinois/will_county/will_county_binding.dart';
import 'package:brainbook/screens/illinois/will_county/will_county_screen.dart';
import 'package:brainbook/screens/lads/add_face_report/add_face_report_binding.dart';
import 'package:brainbook/screens/lads/add_face_report/add_face_report_screen.dart';
import 'package:brainbook/screens/lads/add_narrative_report/add_narrative_report_binding.dart';
import 'package:brainbook/screens/lads/add_narrative_report/add_narrative_report_screen.dart';
import 'package:brainbook/screens/lads/brady_bill/brady_bill_binding.dart';
import 'package:brainbook/screens/lads/brady_bill/brady_bill_screen.dart';
import 'package:brainbook/screens/lads/broadcasts/broadcasts_binding.dart';
import 'package:brainbook/screens/lads/broadcasts/broadcasts_screen.dart';
import 'package:brainbook/screens/lads/chp_180/chp_180_binding.dart';
import 'package:brainbook/screens/lads/chp_180/chp_180_screen.dart';
import 'package:brainbook/screens/lads/chp_offices/chp_offices_binding.dart';
import 'package:brainbook/screens/lads/chp_offices/chp_offices_screen.dart';
import 'package:brainbook/screens/lads/chp_offices_detail/chp_offices_detail_binding.dart';
import 'package:brainbook/screens/lads/chp_offices_detail/chp_offices_detail_screen.dart';
import 'package:brainbook/screens/lads/court_no/court_no_binding.dart';
import 'package:brainbook/screens/lads/court_no/court_no_screen.dart';
import 'package:brainbook/screens/lads/court_no_detail/court_no_detail_binding.dart';
import 'package:brainbook/screens/lads/court_no_detail/court_no_detail_screen.dart';
import 'package:brainbook/screens/lads/crowd_disbursement/crowd_disbursement_binding.dart';
import 'package:brainbook/screens/lads/crowd_disbursement/crowd_disbursement_screen.dart';
import 'package:brainbook/screens/lads/custody/custody_binding.dart';
import 'package:brainbook/screens/lads/custody/custody_screen.dart';
import 'package:brainbook/screens/lads/custody_detail/custody_detail_binding.dart';
import 'package:brainbook/screens/lads/custody_detail/custody_detail_screen.dart';
import 'package:brainbook/screens/lads/custody_info/custody_info_binding.dart';
import 'package:brainbook/screens/lads/custody_info/custody_info_screen.dart';
import 'package:brainbook/screens/lads/face_page/49_face_page_binding.dart';
import 'package:brainbook/screens/lads/face_page/49_face_page_screen.dart';
import 'package:brainbook/screens/lads/field_ops/field_ops_binding.dart';
import 'package:brainbook/screens/lads/field_ops/field_ops_screen.dart';
import 'package:brainbook/screens/lads/mdc_cad/mdc_cad_binding.dart';
import 'package:brainbook/screens/lads/mdc_cad/mdc_cad_screen.dart';
import 'package:brainbook/screens/lads/misd_exceptions/misd_exceptions_binding.dart';
import 'package:brainbook/screens/lads/misd_exceptions/misd_exceptions_screen.dart';
import 'package:brainbook/screens/lads/narrative/narrative_binding.dart';
import 'package:brainbook/screens/lads/narrative/narrative_screen.dart';
import 'package:brainbook/screens/lads/other_common_codes/other_common_codes_binding.dart';
import 'package:brainbook/screens/lads/other_common_codes/other_common_codes_screen.dart';
import 'package:brainbook/screens/lads/other_common_codes_detail/other_common_codes_detail_binding.dart';
import 'package:brainbook/screens/lads/other_common_codes_detail/other_common_codes_detail_screen.dart';
import 'package:brainbook/screens/lads/phonetics/phonetics_binding.dart';
import 'package:brainbook/screens/lads/phonetics/phonetics_screen.dart';
import 'package:brainbook/screens/lads/pursuits/pursuits_binding.dart';
import 'package:brainbook/screens/lads/pursuits/pursuits_screen.dart';
import 'package:brainbook/screens/lads/sacr/sacr_binding.dart';
import 'package:brainbook/screens/lads/sacr/sacr_screen.dart';
import 'package:brainbook/screens/lads/sample_reports/sample_reports_binding.dart';
import 'package:brainbook/screens/lads/sample_reports/sample_reports_screen.dart';
import 'package:brainbook/screens/lads/shad_49/shad_49_binding.dart';
import 'package:brainbook/screens/lads/shad_49/shad_49_screen.dart';
import 'package:brainbook/screens/lads/stat_codes/stat_codes_binding.dart';
import 'package:brainbook/screens/lads/stat_codes/stat_codes_screen.dart';
import 'package:brainbook/screens/lads/stations/stations_binding.dart';
import 'package:brainbook/screens/lads/stations/stations_screen.dart';
import 'package:brainbook/screens/lads/stations_details/stations_details_binding.dart';
import 'package:brainbook/screens/lads/stations_details/stations_details_screen.dart';
import 'package:brainbook/screens/lads/wic_codes/wic_codes_binding.dart';
import 'package:brainbook/screens/lads/wic_codes/wic_codes_screen.dart';
import 'package:brainbook/screens/main/Ist_amd_provokers/Ist_amd_provokers_screen.dart';
import 'package:brainbook/screens/main/Ist_amd_provokers/lst_amd_provokers_binding.dart';
import 'package:brainbook/screens/add_response/add_response_binding.dart';
import 'package:brainbook/screens/add_response/add_response_screen.dart';
import 'package:brainbook/screens/main/age_calculation/age_calculation_binding.dart';
import 'package:brainbook/screens/main/age_calculation/age_calculation_screen.dart';
import 'package:brainbook/screens/main/age_result/age_result_binding.dart';
import 'package:brainbook/screens/main/age_result/age_result_screen.dart';
import 'package:brainbook/screens/ask_question/ask_question_binding.dart';
import 'package:brainbook/screens/ask_question/ask_question_screen.dart';
import 'package:brainbook/screens/main/audio/audio_binding.dart';
import 'package:brainbook/screens/main/audio/audio_screen.dart';
import 'package:brainbook/screens/illinois/bellwood_pd/bellwood_pd_screen.dart';
import 'package:brainbook/screens/main/case_law/case_law_binding.dart';
import 'package:brainbook/screens/main/case_law/case_law_screen.dart';
import 'package:brainbook/screens/main/case_law_detail/case_law_detail_binding.dart';
import 'package:brainbook/screens/main/case_law_detail/case_law_detail_screen.dart';
import 'package:brainbook/screens/illinois/chicago_pd/chicago_pd_binding.dart';
import 'package:brainbook/screens/illinois/chicago_pd/chicago_pd_screen.dart';
import 'package:brainbook/screens/illinois/cicero_pd/cicero_pd_screen.dart';
import 'package:brainbook/screens/main/common_phrases/common_phrase_screen.dart';
import 'package:brainbook/screens/main/common_phrases/common_phrases_binding.dart';
import 'package:brainbook/screens/illinois/cook_county/cook_county_binding.dart';
import 'package:brainbook/screens/illinois/cook_county/cook_county_screen.dart';
import 'package:brainbook/screens/dash_board/dash_board_screen.dart';
import 'package:brainbook/screens/dash_board/dash_board_binding.dart';
import 'package:brainbook/screens/main/dead_checklist/dead_checklist_binding.dart';
import 'package:brainbook/screens/main/dead_checklist/dead_checklist_screen.dart';
import 'package:brainbook/screens/main/drugs_related/drugs_related_binding.dart';
import 'package:brainbook/screens/main/drugs_related/drugs_related_screen.dart';
import 'package:brainbook/screens/main/exigent_circumstances/exigent_circumstances_binding.dart';
import 'package:brainbook/screens/main/exigent_circumstances/exigent_circumstances_screen.dart';
import 'package:brainbook/screens/faqs/faqs_binding.dart';
import 'package:brainbook/screens/faqs/faqs_screen.dart';
import 'package:brainbook/screens/faqs_detail/faqs_detail_binding.dart';
import 'package:brainbook/screens/faqs_detail/faqs_detail_screen.dart';
import 'package:brainbook/screens/main/federal_codes/federal_code_binding.dart';
import 'package:brainbook/screens/main/federal_codes/federal_code_screen.dart';
import 'package:brainbook/screens/main/flash_card_add_details/flash_card_add_detail_binding.dart';
import 'package:brainbook/screens/main/flash_card_add_details/flash_card_add_details_screen.dart';
import 'package:brainbook/screens/main/flash_cards/flash_cards_binding.dart';
import 'package:brainbook/screens/main/flash_cards/flash_cards_screen.dart';
import 'package:brainbook/screens/main/flash_cards_list/flash_card_list_binding.dart';
import 'package:brainbook/screens/main/flash_cards_list/flash_cards_list_screen.dart';
import 'package:brainbook/screens/forogt_password/forgot_password_binding.dart';
import 'package:brainbook/screens/forogt_password/forgot_password_screen.dart';
import 'package:brainbook/screens/main/front_plates/front_plates_binding.dart';
import 'package:brainbook/screens/main/front_plates/front_plates_screen.dart';
import 'package:brainbook/screens/main/gang_slang/gang_slang_binding.dart';
import 'package:brainbook/screens/main/gang_slang/gang_slang_screen.dart';
import 'package:brainbook/screens/main/gang_slang_detail/gang_slang_detail_binding.dart';
import 'package:brainbook/screens/main/gang_slang_detail/gang_slang_detail_screen.dart';
import 'package:brainbook/screens/main/gladys_marsy/gladys_marsy_binding.dart';
import 'package:brainbook/screens/main/gladys_marsy/gladys_marsy_screen.dart';
import 'package:brainbook/screens/main/gladys_r_admonition/gladys_admonition_binding.dart';
import 'package:brainbook/screens/main/gladys_r_admonition/gladys_r_admonition_screen.dart';
import 'package:brainbook/screens/go_offline/go_offline_binding.dart';
import 'package:brainbook/screens/go_offline/go_offline_screen.dart';
import 'package:brainbook/screens/important_information/important_info_binding.dart';
import 'package:brainbook/screens/important_information/important_information_screen.dart';
import 'package:brainbook/screens/main/keys_to_castle/keys_to_castle_binding.dart';
import 'package:brainbook/screens/main/keys_to_castle/keys_to_castle_screen.dart';
import 'package:brainbook/screens/main/less_lethal/less_lethal_binding.dart';
import 'package:brainbook/screens/main/less_lethal/less_lethal_screen.dart';
import 'package:brainbook/screens/illinois/lewis_university_pd/lewis_university_pd_binding.dart';
import 'package:brainbook/screens/illinois/lewis_university_pd/lewis_university_pd_screen.dart';
import 'package:brainbook/screens/location_add_details/location_add_detail_binding.dart';
import 'package:brainbook/screens/location_add_details/location_add_details_screen.dart';
import 'package:brainbook/screens/location_more_information/location_more_info_binding.dart';
import 'package:brainbook/screens/location_more_information/location_more_information_screen.dart';
import 'package:brainbook/screens/locations/location_binding.dart';
import 'package:brainbook/screens/locations/location_screen.dart';
import 'package:brainbook/screens/login/login_binding.dart';
import 'package:brainbook/screens/login/login_screen.dart';
import 'package:brainbook/screens/main/marsys_law/marsys_law_binding.dart';
import 'package:brainbook/screens/main/marsys_law/marsys_law_screen.dart';
import 'package:brainbook/screens/main/miranda/miranda_binding.dart';
import 'package:brainbook/screens/main/miranda/miranda_screen.dart';
import 'package:brainbook/screens/main/retirement_tools/retirement_tools_binding.dart';
import 'package:brainbook/screens/main/sfst_more_option/sfst_more_option_binding.dart';
import 'package:brainbook/screens/main/standardized_fsts/standardized_fsts_binding.dart';
import 'package:brainbook/screens/main/testifying_tips/testifying_binding.dart';
import 'package:brainbook/screens/main/warrants/warrants_binding.dart';
import 'package:brainbook/screens/main/warrants/warrants_screen.dart';
import 'package:brainbook/screens/main/window_tint_laws/window_tint_laws_binding.dart';
import 'package:brainbook/screens/illinois/naperville/naperville_screen.dart';
import 'package:brainbook/screens/new_password/new_password_binding.dart';
import 'package:brainbook/screens/new_password/new_password_screen.dart';
import 'package:brainbook/screens/newyork/alcohol/newyork_alcohol_binding.dart';
import 'package:brainbook/screens/newyork/alcohol/newyork_alcohol_screen.dart';
import 'package:brainbook/screens/newyork/b&c_category/b&c_category_binding.dart';
import 'package:brainbook/screens/newyork/b&c_category/b&c_category_screen.dart';
import 'package:brainbook/screens/newyork/cell_phones/cell_phones_binding.dart';
import 'package:brainbook/screens/newyork/cell_phones/cell_phones_screen.dart';
import 'package:brainbook/screens/newyork/color_codes/color_codes_binding.dart';
import 'package:brainbook/screens/newyork/color_codes/color_codes_screen.dart';
import 'package:brainbook/screens/newyork/common_vtl/common_vtl_binding.dart';
import 'package:brainbook/screens/newyork/common_vtl/common_vtl_screen.dart';
import 'package:brainbook/screens/newyork/court_locations/court_locations_binding.dart';
import 'package:brainbook/screens/newyork/court_locations/court_locations_screen.dart';
import 'package:brainbook/screens/newyork/doc/doc_binding.dart';
import 'package:brainbook/screens/newyork/doc/doc_screen.dart';
import 'package:brainbook/screens/newyork/dsny/dsny_binding.dart';
import 'package:brainbook/screens/newyork/dsny/dsny_screen.dart';
import 'package:brainbook/screens/newyork/dsny_list/dsny_list_binding.dart';
import 'package:brainbook/screens/newyork/dsny_list/dsny_list_screen.dart';
import 'package:brainbook/screens/newyork/dsny_list_detail/dsny_list_detail_binding.dart';
import 'package:brainbook/screens/newyork/dsny_list_detail/dsny_list_detail_screen.dart';
import 'package:brainbook/screens/newyork/mile_markers/mile_markers_binding.dart';
import 'package:brainbook/screens/newyork/mile_markers/mile_markers_screen.dart';
import 'package:brainbook/screens/newyork/nassau_county/nassau_county_binding.dart';
import 'package:brainbook/screens/newyork/nassau_county/nassau_county_screen.dart';
import 'package:brainbook/screens/newyork/ny_agencies/ny_agencies_binding.dart';
import 'package:brainbook/screens/newyork/ny_agencies/ny_agencies_screen.dart';
import 'package:brainbook/screens/newyork/ny_agencies_detail/ny_agency_detail_binding.dart';
import 'package:brainbook/screens/newyork/ny_agencies_detail/ny_agency_detail_screen.dart';
import 'package:brainbook/screens/newyork/ny_sherrif/ny_sherrif_binding.dart';
import 'package:brainbook/screens/newyork/ny_sherrif/ny_sherrif_screen.dart';
import 'package:brainbook/screens/newyork/ny_sherrif_detail/ny_sherrif_detail_binding.dart';
import 'package:brainbook/screens/newyork/ny_sherrif_detail/ny_sherrif_detail_screen.dart';
import 'package:brainbook/screens/newyork/ny_state_detail/ny_state_detail_binding.dart';
import 'package:brainbook/screens/newyork/ny_state_detail/ny_state_detail_screen.dart';
import 'package:brainbook/screens/newyork/ny_state_police/ny_state_police_binding.dart';
import 'package:brainbook/screens/newyork/ny_state_police/ny_state_police_screen.dart';
import 'package:brainbook/screens/newyork/nyc_summons/nyc_summons_binding.dart';
import 'package:brainbook/screens/newyork/nyc_summons/nyc_summons_screen.dart';
import 'package:brainbook/screens/newyork/nyc_transit/nyc_transit_binding.dart';
import 'package:brainbook/screens/newyork/nyc_transit/nyc_transit_screen.dart';
import 'package:brainbook/screens/newyork/nypd/nypd_binding.dart';
import 'package:brainbook/screens/newyork/nypd/nypd_screen.dart';
import 'package:brainbook/screens/newyork/oath_ecb_summons/oath_ecb_summons_binding.dart';
import 'package:brainbook/screens/newyork/oath_ecb_summons/oath_ecb_summons_screen.dart';
import 'package:brainbook/screens/newyork/other_codes/other_codes_binding.dart';
import 'package:brainbook/screens/newyork/other_codes/other_codes_screen.dart';
import 'package:brainbook/screens/newyork/port_authority/port_authority_binding.dart';
import 'package:brainbook/screens/newyork/port_authority/port_authority_screen.dart';
import 'package:brainbook/screens/newyork/read_full_laws/read_full_laws_binding.dart';
import 'package:brainbook/screens/newyork/read_full_laws/read_full_laws_screen.dart';
import 'package:brainbook/screens/newyork/rules_and_regulation/rules_regulation_binding.dart';
import 'package:brainbook/screens/newyork/rules_and_regulation/rules_regulation_screen.dart';
import 'package:brainbook/screens/newyork/suffolk_county/suffolk_county_binding.dart';
import 'package:brainbook/screens/newyork/suffolk_county/suffolk_county_screen.dart';
import 'package:brainbook/screens/newyork/taxi_and_limo/taxi_and_limo_binding.dart';
import 'package:brainbook/screens/newyork/taxi_and_limo/taxi_and_limo_screen.dart';
import 'package:brainbook/screens/newyork/testimonies/testimonies_binding.dart';
import 'package:brainbook/screens/newyork/testimonies/testimonies_screen.dart';
import 'package:brainbook/screens/newyork/yonkers/yonkers_binding.dart';
import 'package:brainbook/screens/newyork/yonkers/yonkers_screen.dart';
import 'package:brainbook/screens/newyork/your_dept_newyork/you_dept_binding_newyork.dart';
import 'package:brainbook/screens/newyork/your_dept_newyork/your_dept_screen_newyork.dart';
import 'package:brainbook/screens/password_update/password_update_screen.dart';
import 'package:brainbook/screens/main/pat_tracker_list/pat_tracker_list_binding.dart';
import 'package:brainbook/screens/main/pat_tracker_list/pat_tracker_list_screen.dart';
import 'package:brainbook/screens/privacy_policy/privacy_policy_binding.dart';
import 'package:brainbook/screens/privacy_policy/privacy_policy_screen.dart';
import 'package:brainbook/screens/profile/profile_binding.dart';
import 'package:brainbook/screens/profile/profile_screen.dart';
import 'package:brainbook/screens/main/pta_tracker_add_details/pat_tracker_add_detail_binding.dart';
import 'package:brainbook/screens/main/pta_tracker_add_details/pta_tracker_add_details_screen.dart';
import 'package:brainbook/screens/main/pta_tracker_detail/pta_tracker_detail_binding.dart';
import 'package:brainbook/screens/main/pta_tracker_detail/pta_tracker_detail_screen.dart';
import 'package:brainbook/screens/main/recruits_studying/recruits_studying_binding.dart';
import 'package:brainbook/screens/main/recruits_studying/recruits_studying_screen.dart';
import 'package:brainbook/screens/redeem_card/redeem_card_binding.dart';
import 'package:brainbook/screens/redeem_card/redeem_card_screen.dart';
import 'package:brainbook/screens/response/response_binding.dart';
import 'package:brainbook/screens/response/response_screen.dart';
import 'package:brainbook/screens/main/retirement_tools/retirement_tools_screen.dart';
import 'package:brainbook/screens/settings/settings_binding.dart';
import 'package:brainbook/screens/settings/settings_screen.dart';
import 'package:brainbook/screens/settings_distance_unit/settings_distance_unit_binding.dart';
import 'package:brainbook/screens/settings_distance_unit/settings_distance_unit_screen.dart';
import 'package:brainbook/screens/settings_location/settings_location_binding.dart';
import 'package:brainbook/screens/settings_location/settings_location_screen.dart';
import 'package:brainbook/screens/main/sfst_more_option/sfta_more_option_screen.dart';
import 'package:brainbook/screens/signup/signup_binding.dart';
import 'package:brainbook/screens/signup/signup_screen.dart';
import 'package:brainbook/screens/splash/splash_screen.dart';
import 'package:brainbook/screens/main/standardized_fsts/standardized_fsts_screen.dart';
import 'package:brainbook/screens/subscribe/subscribe_binding.dart';
import 'package:brainbook/screens/subscribe/subscribe_screen.dart';
import 'package:brainbook/screens/main/subscription_survey/subscription_survey_binding.dart';
import 'package:brainbook/screens/main/subscription_survey/subscription_survey_screen.dart';
import 'package:brainbook/screens/support/support_binding.dart';
import 'package:brainbook/screens/support/support_screen.dart';
import 'package:brainbook/screens/switch_state/switch_state_binding.dart';
import 'package:brainbook/screens/switch_state/switch_state_screen.dart';
import 'package:brainbook/screens/switch_state_change/switch_state_change_binding.dart';
import 'package:brainbook/screens/switch_state_change/switch_state_change_screen.dart';
import 'package:brainbook/screens/main/testifying_tips/testifying_tips_screen.dart';
import 'package:brainbook/screens/traffic_code/traffic_code_binding.dart';
import 'package:brainbook/screens/traffic_code/traffic_screen.dart';
import 'package:brainbook/screens/traffic_code_add_details/traffic_code_add_detail_binding.dart';
import 'package:brainbook/screens/traffic_code_add_details/traffic_code_add_details_screen.dart';
import 'package:brainbook/screens/main/trafic_investigation/traffic_investigation_binding.dart';
import 'package:brainbook/screens/main/trafic_investigation/trafic_investigation_screen.dart';
import 'package:brainbook/screens/main/translator/translator_screen.dart';
import 'package:brainbook/screens/main/translator/trasnlator_binding.dart';
import 'package:brainbook/screens/main/trespasser_add_details/trespasser_add_detail_binding.dart';
import 'package:brainbook/screens/main/trespasser_add_details/trespasser_add_details_screen.dart';
import 'package:brainbook/screens/main/trespasser_apb/trespasser_abp_binding.dart';
import 'package:brainbook/screens/main/trespasser_apb/trespasser_apb_screen.dart';
import 'package:brainbook/screens/main/trespasser_apb_details/trespasser_apb_detail_binding.dart';
import 'package:brainbook/screens/main/trespasser_apb_details/trespasser_apb_details_screen.dart';
import 'package:brainbook/screens/main/vehicle_stop_form/vehicle_stop_form_binding.dart';
import 'package:brainbook/screens/main/vehicle_stop_form/vehicle_stop_form_screen.dart';
import 'package:brainbook/screens/verification_code/verification_code_binding.dart';
import 'package:brainbook/screens/verification_code/verification_code_screen.dart';
import 'package:brainbook/screens/welcome/welcome_screen.dart';
import 'package:brainbook/screens/main/window_tint_laws/window_tint_laws_screen.dart';
import 'package:brainbook/screens/illinois/your_department/your_department_binding.dart';
import 'package:brainbook/screens/illinois/your_department/your_department_screen.dart';
import 'package:get/get.dart';

import '../screens/password_update/password_update_binding.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: Routes.signupScreen,
        page: () => SignUp(),
        binding: SignUpBinding()),
    GetPage(
        name: Routes.forgotPasswordScreen,
        page: () => ForgotPassword(),
        binding: ForgotPasswordBinding()),
    GetPage(
        name: Routes.verificationCodeScreen,
        page: () => VerificationCode(),
        binding: VerficationBinding()),
    GetPage(
        name: Routes.newPasswordScreen,
        page: () => NewPassword(),
        binding: NewPasswordBinding()),
    GetPage(
        name: Routes.passwordUpdateScreen,
        page: () => PasswordUpdate(),
        binding: PasswordUpdateBinding()),
    GetPage(
        name: Routes.dashBoardScreen,
        page: () => DashBoard(),
        binding: DashBoardBinding()),
    GetPage(
        name: Routes.translatorScreen,
        page: () => TranslatorScreen(),
        binding: TranslatorBinding()),
    GetPage(
        name: Routes.commonPhraseScreen,
        page: () => CommonPhraseScreen(),
        binding: CommonPhrasesBinding()),
    GetPage(
        name: Routes.audioScreen,
        page: () => AudioScreen(),
        binding: AudioBinding()),
    GetPage(
        name: Routes.ageResultScreen,
        page: () => AgeResultScreen(),
        binding: AgeResultBinding()),
    GetPage(
        name: Routes.gangSlangDetailScreen,
        page: () => GangSlangDetailScreen(),
        binding: GangSlangDetailBinding()),
    GetPage(
        name: Routes.nHTSAManualScreen,
        page: () => SFSTMoreOptionScreen(),
        binding: SFTAMoreOptionBinding()),
    GetPage(
        name: Routes.lawCaseDetailScreen,
        page: () => CaseLawDetailScreen(),
        binding: CaseLawDetailsBinding()),
    GetPage(
      name: Routes.trespasserApbDetailsScreen,
      page: () => TrespasserApbDetailsScreen(),
      binding: TrespasserApbDetailBinding(),
    ),
    GetPage(
        name: Routes.addTrespasserDetailsScreen,
        page: () => AddTrespasserDetailsScreen(),
        binding: TrespasserAddDetailBinding()),
    GetPage(
        name: Routes.flashCardsScreen,
        page: () => FlashCardsScreen(),
        binding: FlashCardsBinding()),
    GetPage(
        name: Routes.flashCardsListScreen,
        page: () => FlashCardsListScreen(),
        binding: FlashCardListBinding()),
    GetPage(
        name: Routes.flashCardAddDetailsScreen,
        page: () => FlashCardAddDetailsScreen(),
        binding: FlashCardAddDetailBinding()),
    GetPage(
        name: Routes.pATTrackerListScreen,
        page: () => PATTrackerListScreen(),
        binding: PatTrackerListBinding()),
    GetPage(
        name: Routes.pATTrackerDetailScreen,
        page: () => PATTrackerDetailScreen(),
        binding: PtaTrackerDetailBinding()),
    GetPage(
        name: Routes.pATTrackerAddDetailsScreen,
        page: () => PATTrackerAddDetailsScreen(),
        binding: PatTrackerAddDetailBinding()),
    GetPage(
        name: Routes.askQuestionScreen,
        page: () => AskQuestionScreen(),
        binding: AskQuestionBinding()),
    GetPage(
        name: Routes.responseScreen,
        page: () => ResponseScreen(),
        binding: ResponseBinding()),
    GetPage(
        name: Routes.addResponseScreen,
        page: () => AddResponseScreen(),
        binding: AddResponseBinding()),
    GetPage(
        name: Routes.locationScreen,
        page: () => LocationScreen(),
        binding: LocationBinding()),
    GetPage(
        name: Routes.locationMoreInfoScreen,
        page: () => LocationMoreInfoScreen(),
        binding: LocationMoreInfoBinding()),
    GetPage(
        name: Routes.locationAddDetailsScreen,
        page: () => LocationAddDetailsScreen(),
        binding: LocationAddDetailBinding()),
    GetPage(
        name: Routes.trafficCodeScreen,
        page: () => TrafficCodeScreen(),
        binding: TrafficCodeBinding()),
    GetPage(
        name: Routes.trafficCodeAddDetailScreen,
        page: () => TrafficCodeAddDetailScreen(),
        binding: TrafficAddDetailsBinding()),
    GetPage(
        name: Routes.importantInfoScreen,
        page: () => ImportantInfoScreen(),
        binding: ImportantInfoBinding()),
    GetPage(
        name: Routes.switchStateScreen,
        page: () => SwitchStateScreen(),
        binding: SwitchStateBinding()),
    GetPage(
        name: Routes.redeemCardScreen,
        page: () => RedeemCardScreen(),
        binding: RedeemCardBinding()),
    GetPage(
        name: Routes.subscribeScreen,
        page: () => SubscribeScreen(),
        binding: SubscribeBinding()),
    GetPage(
        name: Routes.switchStateChangeScreen,
        page: () => SwitchStateChangeScreen(),
        binding: SwitchStateChangeBinding()),
    GetPage(
        name: Routes.warrantsScreen,
        page: () => Warrants(),
        binding: WarrantsBinding()),
    GetPage(
        name: Routes.federalCodeScreen,
        page: () => FederalCode(),
        binding: FederalCodeBiding()),
    GetPage(
        name: Routes.lessLethalScreen,
        page: () => LessLethal(),
        binding: LessLethalBinding()),
    GetPage(
        name: Routes.drugsRelatedScreen,
        page: () => DrugsRelated(),
        binding: DrugsRelatedBinding()),
    GetPage(
        name: Routes.deadCheckListScreen,
        page: () => DeadCheckListScreen(),
        binding: DeadChecklistBinding()),
    GetPage(
        name: Routes.ageCalculationScreen,
        page: () => AgeCalculationScreen(),
        binding: AgeCalculationBinding()),
    GetPage(
        name: Routes.gangSlangScreen,
        page: () => GangSlangScreen(),
        binding: GangSlanBinding()),
    GetPage(
        name: Routes.traficInvestigationScreen,
        page: () => TraficInvestigationScreen(),
        binding: TrafficInvestigationBinding()),
    GetPage(
        name: Routes.testifyingTipsScreen,
        page: () => TestifyingTipsScreen(),
        binding: TestifyingBinding()),
    GetPage(
        name: Routes.windowTintLawsScreen,
        page: () => WindowTintLawsScreen(),
        binding: WindowTintLawsBinding()),
    GetPage(
        name: Routes.standardizedFST,
        page: () => StandardizedFST(),
        binding: StandardizedFstsBinding()),
    GetPage(
        name: Routes.caseLawScreen,
        page: () => CaseLawScreen(),
        binding: CaseLawBinding()),
    GetPage(
        name: Routes.gladysMarsyScreen,
        page: () => GladysMarsyScreen(),
        binding: GladysMarsyBinding()),
    GetPage(
        name: Routes.gladysAdmonitionScreen,
        page: () => GladysRAdmonitionScreen(),
        binding: GladysAdmonitionBinding()),
    GetPage(
        name: Routes.marsyLawScreen,
        page: () => MarsyLawScreen(),
        binding: MarsysLawBinding()),
    GetPage(
        name: Routes.mirandaScreen,
        page: () => MirandaScreen(),
        binding: MirandaBinding()),
    GetPage(
        name: Routes.keysToCastleScreen,
        page: () => KeysToCastleScreen(),
        binding: KeysToCastleBinding()),
    GetPage(
        name: Routes.exigentCircumstancesScreen,
        page: () => ExigentCircumstancesScreen(),
        binding: ExigentCircumstancesBinding()),
    GetPage(
        name: Routes.vehicleStopFormScreen,
        page: () => VehicleStopFormScreen(),
        binding: VehicleStopFormBinding()),
    GetPage(
        name: Routes.trespasserAPBScreen,
        page: () => TrespasserAPBScreen(),
        binding: TrespasserApbBinding()),
    GetPage(
        name: Routes.frontPlatesScreen,
        page: () => FrontPlatesScreen(),
        binding: FrontPlatesBinding()),
    GetPage(
        name: Routes.recruitsStudyingScreen,
        page: () => RecruitsStudyingScreen(),
        binding: RecruitsStudyingBunding()),
    GetPage(
        name: Routes.subscriptionSurveyScreen,
        page: () => SubscriptionSurveyScreen(),
        binding: SubscriptionSurveyBinding()),
    GetPage(
        name: Routes.retirementToolsScreen,
        page: () => RetirementToolsScreen(),
        binding: RetirementToolsBinding()),
    GetPage(
        name: Routes.firstAmdProvokers,
        page: () => IstAmdProvokers(),
        binding: IstAmdProvokersBinding()),
    GetPage(
        name: Routes.profileScreen,
        page: () => ProfileScreen(),
        binding: ProfileBinding()),
    GetPage(
        name: Routes.settingsScreen,
        page: () => SettingsScreen(),
        binding: SettingsBinding()),
    GetPage(
        name: Routes.settingsLocationScreen,
        page: () => SettingsLocationScreen(),
        binding: SettingsLocationBinding()),
    GetPage(
        name: Routes.settingsDistanceUnitScreen,
        page: () => SettingsDistanceUnitScreen(),
        binding: SettingsDistanceUnitBinding()),
    GetPage(
        name: Routes.fAQsScreen,
        page: () => FAQsScreen(),
        binding: FAQsBinding()),
    GetPage(
        name: Routes.fAQsDetailScreen,
        page: () => FAQsDetailScreen(),
        binding: FAQsDetailBinding()),
    GetPage(
        name: Routes.goOfflineScreen,
        page: () => GoOfflineScreen(),
        binding: GoOfflineBinding()),
    GetPage(
        name: Routes.supportScreen,
        page: () => SupportScreen(),
        binding: SupportBinding()),
    GetPage(
        name: Routes.privacyPolicyScreen,
        page: () => PrivacyPolicyScreen(),
        binding: PrivacyPolicyBinding()),
    GetPage(
        name: Routes.yourDeptScreen,
        page: () => YourDeptScreen(),
        binding: YourDeptBinding()),
    GetPage(
        name: Routes.bellwoodPDScreen,
        page: () => BellwoodPDScreen(),
        binding: BellwoodPDBinding()),
    GetPage(
        name: Routes.lakeCountryScreen,
        page: () => LakeCountryScreen(),
        binding: LakeCountryBinding()),
    GetPage(
        name: Routes.chicagoPDScreen,
        page: () => ChicagoPDScreen(),
        binding: ChicagoPDBinding()),
    GetPage(
        name: Routes.lewisUniversityPDScreen,
        page: () => LewisUniversityPDScreen(),
        binding: LewisUniversityPDBinding()),
    GetPage(
        name: Routes.ciceroPDScreen,
        page: () => CiceroPDScreen(),
        binding: CiceroPDBinding()),
    GetPage(
        name: Routes.napervilleScreen,
        page: () => NapervilleScreen(),
        binding: NapervilleBinding()),
    GetPage(
        name: Routes.cookCountyScreen,
        page: () => CookCountyScreen(),
        binding: CookCountyBinding()),
    GetPage(
        name: Routes.springfieldScreen,
        page: () => SpringfieldScreen(),
        binding: SpringfieldBinding()),
    GetPage(
        name: Routes.dupageCountyScreen,
        page: () => DupageCountyScreen(),
        binding: DupageCountyBinding()),
    GetPage(
        name: Routes.rockfordPDScreen,
        page: () => RockfordPDScreen(),
        binding: RockfordPDBinding()),
    GetPage(
        name: Routes.grayslakePDScreen,
        page: () => GrayslakePDScreen(),
        binding: GrayslakePDBinding()),
    GetPage(
        name: Routes.romeopvillePDScreen,
        page: () => RomeopvillePDScreen(),
        binding: RomeopvillePDBinding()),
    GetPage(
        name: Routes.hometownPDScreen,
        page: () => HometownPDScreen(),
        binding: HometownPDBinding()),
    GetPage(
        name: Routes.willCountyScreen,
        page: () => WillCountyScreen(),
        binding: WillCountyBinding()),
    GetPage(
        name: Routes.jolietPDScreen,
        page: () => JolietPDScreen(),
        binding: JolietPDBinding()),
    GetPage(
        name: Routes.iSPDistrictsScreen,
        page: () => ISPDistrictsScreen(),
        binding: ISPDistrictsBinding()),
    GetPage(
        name: Routes.iSPDistrictDetailsScreen,
        page: () => ISPDistrictDetailsScreen(),
        binding: ISPDistrictDetailsBinding()),
    GetPage(
        name: Routes.commonCodesScreen,
        page: () => CommonCodesScreen(),
        binding: CommonCodesBinding()),
    GetPage(
        name: Routes.alcoholScreen,
        page: () => AlcoholScreen(),
        binding: AlcoholBinding()),
    GetPage(
        name: Routes.alcoholDetailScreen,
        page: () => AlcoholDetailScreen(),
        binding: AlcoholDetailBinding()),
    GetPage(
        name: Routes.weaponsScreen,
        page: () => WeaponsScreen(),
        binding: WeaponsBinding()),
    GetPage(
        name: Routes.weaponDetailScreen,
        page: () => WeaponDetailScreen(),
        binding: WeaponDetailBinding()),
    GetPage(
        name: Routes.domesticViolenceScreen,
        page: () => DomesticViolenceScreen(),
        binding: DomesticViolenceBinding()),
    GetPage(
        name: Routes.yourDeptNewYorkScreen,
        page: () => YourDeptNewYorkScreen(),
        binding: YourDeptNewYorkBinding()),
    GetPage(
        name: Routes.dSNYScreen,
        page: () => DSNYScreen(),
        binding: DSNYBinding()),
    GetPage(
        name: Routes.dSNYListScreen,
        page: () => DSNYListScreen(),
        binding: DSNYListBinding()),
    GetPage(
        name: Routes.dSNYListDetailScreen,
        page: () => DSNYListDetailScreen(),
        binding: DSNYListDetailBinding()),
    GetPage(
        name: Routes.dOCScreen, page: () => DOCScreen(), binding: DOCBinding()),
    GetPage(
        name: Routes.nYPDScreen,
        page: () => NYPDScreen(),
        binding: NYPDBinding()),
    GetPage(
        name: Routes.nassauCountyScreen,
        page: () => NassauCountyScreen(),
        binding: NassauCountyBinding()),
    GetPage(
        name: Routes.portAuthorityScreen,
        page: () => PortAuthorityScreen(),
        binding: PortAuthorityBinding()),
    GetPage(
        name: Routes.suffolkCountyScreen,
        page: () => SuffolkCountyScreen(),
        binding: SuffolkCountyBinding()),
    GetPage(
        name: Routes.taxiLimoScreen,
        page: () => TaxiLimoScreen(),
        binding: TaxiLimoBinding()),
    GetPage(
        name: Routes.yonkersScreen,
        page: () => YonkersScreen(),
        binding: YonkersBinding()),
    GetPage(
        name: Routes.nYCSummonsScreen,
        page: () => NYCSummonsScreen(),
        binding: NYCSummonsBinding()),
    GetPage(
        name: Routes.oATHECBSummonsScreen,
        page: () => OATHECBSummonsScreen(),
        binding: OATHECBSummonsBinding()),
    GetPage(
        name: Routes.bandCCategoryScreen,
        page: () => BandCCategoryScreen(),
        binding: BandCCategoryBinding()),
    GetPage(
        name: Routes.courtLocationScreen,
        page: () => CourtLocationScreen(),
        binding: CourtLocationBinding()),
    GetPage(
        name: Routes.nYCTransitScreen,
        page: () => NYCTransitScreen(),
        binding: NYCTransitBinding()),
    GetPage(
        name: Routes.rulesRegulationScreen,
        page: () => RulesRegulationScreen(),
        binding: RulesRegulationBinding()),
    GetPage(
        name: Routes.commonVTLScreen,
        page: () => CommonVTLScreen(),
        binding: CommonVTLBinding()),
    GetPage(
        name: Routes.newYorkAlcoholScreen,
        page: () => NewYorkAlcoholScreen(),
        binding: NewYorkAlcoholBinding()),
    GetPage(
        name: Routes.readFullLawsScreen,
        page: () => ReadFullLawsScreen(),
        binding: ReadFullLawsBinding()),
    GetPage(
        name: Routes.testimoniesScreen,
        page: () => TestimoniesScreen(),
        binding: TestimoniesBinding()),
    GetPage(
        name: Routes.cellPhonesScreen,
        page: () => CellPhonesScreen(),
        binding: CellPhonesBinding()),
    GetPage(
        name: Routes.otherCodesScreen,
        page: () => OtherCodesScreen(),
        binding: OtherCodesBinding()),
    GetPage(
        name: Routes.colorCodesScreen,
        page: () => ColorCodesScreen(),
        binding: ColorCodesBinding()),
    GetPage(
        name: Routes.nYStatePoliceScreen,
        page: () => NYStatePoliceScreen(),
        binding: NYStatePoliceBinding()),
    GetPage(
        name: Routes.nYStateDetailScreen,
        page: () => NYStateDetailScreen(),
        binding: NYStateDetailBinding()),
    GetPage(
        name: Routes.nYAgenciesScreen,
        page: () => NYAgenciesScreen(),
        binding: NYAgenciesBinding()),
    GetPage(
        name: Routes.nYAgenciesDetailScreen,
        page: () => NYAgenciesDetailScreen(),
        binding: NYAgenciesDetailBinding()),
    GetPage(
        name: Routes.nYSherrifScreen,
        page: () => NYSherrifScreen(),
        binding: NYSherrifBinding()),
    GetPage(
        name: Routes.nYSherrifDetailScreen,
        page: () => NYSherrifDetailScreen(),
        binding: NYSherrifDetailBinding()),
    GetPage(
        name: Routes.mileMarkersScreen,
        page: () => MileMarkersScreen(),
        binding: MileMarkersBinding()),
    GetPage(
        name: Routes.sHAD49Screen,
        page: () => SHAD49Screen(),
        binding: SHAD49Binding()),
    GetPage(
        name: Routes.facePageScreen,
        page: () => FacePageScreen(),
        binding: FacePageBinding()),
    GetPage(
        name: Routes.addFaceReportScreen,
        page: () => AddFaceReportScreen(),
        binding: AddFaceReportBinding()),
    GetPage(
        name: Routes.narrativeScreen,
        page: () => NarrativeScreen(),
        binding: NarrativeBinding()),
    GetPage(
        name: Routes.addNarrtaiveReportScreen,
        page: () => AddNarrtaiveReportScreen(),
        binding: AddNarrativeReportBinding()),
    GetPage(
        name: Routes.stationsScreen,
        page: () => StationsScreen(),
        binding: StationsBinding()),
    GetPage(
        name: Routes.stationsDetailScreen,
        page: () => StationsDetailScreen(),
        binding: StationsDetailBinding()),
    GetPage(
        name: Routes.mDCScreen, page: () => MDCScreen(), binding: MDCBinding()),
    GetPage(
        name: Routes.courtNoScreen,
        page: () => CourtNoScreen(),
        binding: CourtNoBinding()),
    GetPage(
        name: Routes.courtNoDetailScreen,
        page: () => CourtNoDetailScreen(),
        binding: CourtNoDetailBinding()),
    GetPage(
        name: Routes.custodyScreen,
        page: () => CustodyScreen(),
        binding: CustodyBinding()),
    GetPage(
        name: Routes.custodyDetailScreen,
        page: () => CustodyDetailScreen(),
        binding: CustodyDetailBinding()),
    GetPage(
        name: Routes.otherCommonCodesScreen,
        page: () => OtherCommonCodesScreen(),
        binding: OtherCommonCodesBinding()),
    GetPage(
        name: Routes.oCCDetailScreen,
        page: () => OCCDetailScreen(),
        binding: OCCDetailBinding()),
    GetPage(
        name: Routes.broadcastsScreen,
        page: () => BroadcastsScreen(),
        binding: BroadcastsBinding()),
    GetPage(
        name: Routes.statCodesScreen,
        page: () => StatCodesScreen(),
        binding: StatCodesBinding()),
    GetPage(
        name: Routes.phoneticsScreen,
        page: () => PhoneticsScreen(),
        binding: PhoneticsBinding()),
    GetPage(
        name: Routes.cHPScreen, page: () => CHPScreen(), binding: CHPBinding()),
    GetPage(
        name: Routes.sACRScreen,
        page: () => SACRScreen(),
        binding: SACRBinding()),
    GetPage(
        name: Routes.cHPOfficersScreen,
        page: () => CHPOfficersScreen(),
        binding: CHPOfficersBinding()),
    GetPage(
        name: Routes.cHPOfficesDetailScreen,
        page: () => CHPOfficesDetailScreen(),
        binding: CHPOfficesDetailBinding()),
    GetPage(
        name: Routes.pursuitsScreen,
        page: () => PursuitsScreen(),
        binding: PursuitsBinding()),
    GetPage(
        name: Routes.sampleReportsScreen,
        page: () => SampleReportsScreen(),
        binding: SampleReportsBinding()),
    GetPage(
        name: Routes.wICCodesScreen,
        page: () => WICCodesScreen(),
        binding: WICCodesBinding()),
    GetPage(
        name: Routes.custodyInfoScreen,
        page: () => CustodyInfoScreen(),
        binding: CustodyInfoBinding()),
    GetPage(
        name: Routes.mISDExceptionsScreen,
        page: () => MISDExceptionsScreen(),
        binding: MISDExceptionsBinding()),
    GetPage(
        name: Routes.fieldOPSScreen,
        page: () => FieldOPSScreen(),
        binding: FieldOPSBinding()),
    GetPage(
        name: Routes.crowDisbursementScreen,
        page: () => CrowDisbursementScreen(),
        binding: CrowDisbursementBinding()),
    GetPage(
        name: Routes.bradyBillScreen,
        page: () => BradyBillScreen(),
        binding: BradyBillBinding()),
  ];
}
