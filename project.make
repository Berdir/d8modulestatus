# Projects in this file are grouped in projects already on drupal.org and
# those elsewhere, each group is sorted alphabetically.

api = 2
core = 8.x

; Drupal core
projects[drupal][type] = core
projects[drupal][version] = 8.1.x-dev

;projects[drupal][patch][] = https://www.drupal.org/files/issues/prevent-notices-if-function-is-not-a-method-2417727-3.patch

; Drupal.org projects
projects[address][version] = "1.x-dev"
projects[allowed_formats][version] = "1.x-dev"
projects[captcha][version] = "1.x-dev"
projects[collect][version] = "1.x-dev"
projects[crm_core][version] = "1.x-dev"
projects[composer_manager][version] = "1.x-dev"
projects[contact_storage][version] = "1.x-dev"
projects[ctools][version] = "3.x-dev"
projects[currency][version] = "3.x-dev"
projects[default_content][version] = "1.x-dev"
projects[diff][version] = "1.x-dev"
projects[ds][version] = "2.x-dev"
projects[dynamic_entity_reference][version] = "1.x-dev"
projects[email_registration][version] = "1.x-dev"
projects[embed][version] = "1.x-dev"
projects[entity][version] = "1.x-dev"
projects[entity_browser][version] = "1.x-dev"
projects[entity_embed][version] = "1.x-dev"
projects[entity_reference_revisions][version] = "1.x-dev"
projects[entityform_block][version] = "1.x-dev"
projects[features][version] = "3.x-dev"
projects[flag][version] = "4.x-dev"
projects[field_group][version] = "1.x-dev"
projects[file_entity][version] = "2.x-dev"
projects[google_analytics][version] = "2.x-dev"
projects[honeypot][version] = "1.x-dev"
projects[key_value][version] = "1.x-dev"
projects[inline_entity_form][version] = "1.x-dev"
projects[inmail][version] = "1.x-dev"
projects[interval][version] = "1.x-dev"
projects[jw_player][version] = "1.x-dev"
projects[layout_plugin][version] = "1.x-dev"
projects[libraries][version] = "3.x-dev"
projects[login_security][version] = "1.x-dev"
projects[logouttab][version] = "1.x-dev"
projects[maillog][version] = "1.x-dev"
projects[mailsystem][version] = "4.x-dev"
projects[mailmute][version] = "1.x-dev"
projects[masquerade][version] = "2.x-dev"
projects[media_entity][version] = "1.x-dev"
projects[metatag][version] = "1.x-dev"
projects[monitoring][version] = "1.x-dev"
projects[multiversion][version] = "1.x-dev"
projects[nodeorder][version] = "1.x-dev"
projects[name][version] = "1.x-dev"
projects[page_manager][version] = "1.x-dev"
projects[panels][version] = "3.x-dev"
projects[paragraphs][version] = "1.x-dev"
projects[past][version] = "1.x-dev"
projects[pathologic][version] = "1.x-dev"
projects[pathauto][version] = "1.x-dev"
projects[payment][version] = "2.x-dev"
projects[payment_datatrans][version] = "1.x-dev"
projects[plugin][version] = "2.x-dev"
projects[poll][version] = "1.x-dev"
projects[profile][version] = "1.x-dev"
projects[relaxed][version] = "1.x-dev"
projects[rest_api_doc][version] = "1.x-dev"
projects[rules][version] = "3.x-dev"
projects[search_api][version] = "1.x-dev"
projects[search_api_solr][version] = "1.x-dev"
projects[sharemessage][version] = "1.x-dev"
projects[swiftmailer][version] = "1.x-dev"
projects[simple_mail][version] = "1.x-dev"
projects[simplenews][version] = "1.x-dev"
projects[simplenews_scheduler][version] = "1.x-dev"
projects[state_machine][version] = "1.x-dev"
projects[token][version] = "1.x-dev"
projects[tmgmt][version] = "1.x-dev"
projects[tmgmt_google][version] = "1.x-dev"
projects[tmgmt_microsoft][version] = "1.x-dev"
projects[tmgmt_mygengo][version] = "1.x-dev"
; Commented out, syntax error in tests
;projects[xmlsitemap][version] = "1.x-dev"
projects[ultimate_cron][version] = "2.x-dev"
projects[views_custom_cache_tag][version] = "1.x-dev"
projects[votingapi][version] = "3.x-dev"
projects[wysiwyg_linebreaks][version] = "1.x-dev"

; Module patches.
; Adds Monitoring payment test.
projects[monitoring][patch][] = https://www.drupal.org/files/issues/add_payment_test-2564195-6.patch

; Unofficial ports.
projects[block_class][type] = "module"
projects[block_class][download][type] = "git"
projects[block_class][download][branch] = "8.0.x-1.x"
projects[block_class][download][url] = "http://git.drupal.org/sandbox/YaronTal/2345855.git"

projects[commerce][type] = "module"
projects[commerce][download][type] = "git"
projects[commerce][download][branch] = "8.x-2.x"
projects[commerce][download][url] = "https://github.com/commerceguys/commerce.git"

projects[fallback_formatter][type] = "module"
projects[fallback_formatter][download][type] = "git"
projects[fallback_formatter][download][branch] = 8.x-1.x
projects[fallback_formatter][download][url] = "https://github.com/drupal-media/fallback_formatter.git"

projects[media_pinkeye][type] = "module"
projects[media_pinkeye][download][type] = "git"
projects[media_pinkeye][download][branch] = 8.x-1.x
projects[media_pinkeye][download][url] = "https://github.com/drupal-media/media_pinkeye"

projects[payment_postfinance][type] = "module"
projects[payment_postfinance][download][type] = "git"
projects[payment_postfinance][download][branch] = master
projects[payment_postfinance][download][url] = "https://github.com/md-systems/postfinance.git"

projects[payment_saferpay][type] = "module"
projects[payment_saferpay][download][type] = "git"
projects[payment_saferpay][download][branch] = 8.x-1.x
projects[payment_saferpay][download][url] = "https://github.com/md-systems/saferpay.git"

projects[redirect][type] = "module"
projects[redirect][download][type] = "git"
projects[redirect][download][branch] = 8.x-1.x
projects[redirect][download][url] = "https://github.com/md-systems/redirect.git"

projects[redis][type] = "module"
projects[redis][download][type] = "git"
projects[redis][download][branch] = 8.x-1.x
projects[redis][download][url] = "https://github.com/md-systems/redis.git"
