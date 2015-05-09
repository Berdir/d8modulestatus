# Projects in this file are grouped in projects already on drupal.org and
# those elsewhere, each group is sorted alphabetically.

api = 2
core = 8.x

; Drupal core
projects[drupal][type] = core
projects[drupal][version] = 8.0.x-dev

; Fixes notices when generating simpletest xml files.
;projects[drupal][patch][] = https://www.drupal.org/files/issues/prevent-notices-if-function-is-not-a-method-2417727-3.patch

; Drupal.org projects
projects[captcha][version] = "1.x-dev"
projects[collect][version] = "1.x-dev"
projects[composer_manager][version] = "1.x-dev"
projects[contact_storage][version] = "1.x-dev"
projects[currency][version] = "3.x-dev"
projects[diff][version] = "1.x-dev"
projects[ds][version] = "2.x-dev"
projects[dynamic_entity_reference][version] = "1.x-dev"
projects[email_registration][version] = "1.x-dev"
projects[entity_browser][version] = "1.x-dev"
projects[entity_embed][version] = "1.x-dev"
projects[entity_reference_revisions][version] = "1.x-dev"
projects[entityform_block][version] = "1.x-dev"
projects[features][version] = "3.x-dev"
projects[flag][version] = "4.x-dev"
projects[google_analytics][version] = "2.x-dev"
projects[honeypot][version] = "1.x-dev"
projects[inmail][version] = "1.x-dev"
projects[interval][version] = "1.x-dev"
projects[jw_player][version] = "1.x-dev"
projects[layout_plugin][version] = "1.x-dev"
projects[libraries][version] = "3.x-dev"
projects[login_security][version] = "1.x-dev"
projects[logouttab][version] = "1.x-dev"
projects[maillog][version] = "1.x-dev"
projects[mailmute][version] = "1.x-dev"
projects[masquerade][version] = "2.x-dev"
projects[media_entity][version] = "1.x-dev"
projects[monitoring][version] = "1.x-dev"
projects[name][version] = "1.x-dev"
projects[page_manager][version] = "1.x-dev"
projects[panels][version] = "3.x-dev"
projects[paragraphs][version] = "1.x-dev"
projects[past][[version] = "1.x-dev"
projects[pathologic][version] = "1.x-dev"
projects[payment][version] = "2.x-dev"
projects[poll][version] = "1.x-dev"
projects[rest_api_doc][version] = "1.x-dev"
projects[rules][version] = "3.x-dev"
projects[search_api][version] = "1.x-dev"
projects[sharemessage][version] = "1.x-dev"
projects[simplenews][version] = "1.x-dev"
projects[simplenews_scheduler][version] = "1.x-dev"
projects[token][version] = "1.x-dev"
projects[tmgmt][version] = "1.x-dev"
projects[tmgmt_google][version] = "1.x-dev"
projects[tmgmt_microsoft][version] = "1.x-dev"
; Commented out, syntax error in tests
;projects[xmlsitemap][version] = "1.x-dev"
projects[wysiwyg_linebreaks][version] = "1.x-dev"

; Unofficial ports.
projects[block_class][type] = "module"
projects[block_class][download][type] = "git"
projects[block_class][download][branch] = "8.0.x-1.x"
projects[block_class][download][url] = "http://git.drupal.org/sandbox/YaronTal/2345855.git"

projects[commerce][type] = "module"
projects[commerce][download][type] = "git"
projects[commerce][download][branch] = "8.x-2.x"
projects[commerce][download][url] = "https://github.com/commerceguys/commerce.git"

projects[crm_core][type] = "module"
projects[crm_core][download][type] = "git"
projects[crm_core][download][branch] = "8.x-0.x"
projects[crm_core][download][url] = "https://github.com/md-systems/crm_core.git"

projects[default_content][type] = "module"
projects[default_content][download][type] = "git"
projects[default_content][download][branch] = 8.x
projects[default_content][download][url] = "https://github.com/larowlan/default_content.git"

projects[fallback_formatter][type] = "module"
projects[fallback_formatter][download][type] = "git"
projects[fallback_formatter][download][branch] = 8.x-1.x
projects[fallback_formatter][download][url] = "https://github.com/md-systems/fallback_formatter.git"

projects[file_entity][type] = "module"
projects[file_entity][download][type] = "git"
projects[file_entity][download][branch] = 8.x-2.x
projects[file_entity][download][url] = "https://github.com/md-systems/file_entity.git"

; @todo switch back to d.o
projects[globalredirect][type] = "module"
projects[globalredirect][download][type] = "git"
projects[globalredirect][download][branch] = 8.x-1.x
projects[globalredirect][download][url] = "https://github.com/md-systems/globalredirect.git"

projects[inline_entity_form][type] = "module"
projects[inline_entity_form][download][type] = "git"
projects[inline_entity_form][download][branch] = 8.x-1.x
projects[inline_entity_form][download][url] = "https://github.com/webflo/inline_entity_form.git"

projects[mailsystem][type] = "module"
projects[mailsystem][download][type] = "git"
projects[mailsystem][download][branch] = 8.x-4.x
projects[mailsystem][download][url] = "https://github.com/LukyLuke/mailsystem"

projects[media_pinkeye][type] = "module"
projects[media_pinkeye][download][type] = "git"
projects[media_pinkeye][download][branch] = 8.x-1.x
projects[media_pinkeye][download][url] = "https://github.com/drupal-media/media_pinkeye"

projects[metatag][type] = "module"
projects[metatag][download][type] = "git"
projects[metatag][download][branch] = master
projects[metatag][download][url] = "https://bitbucket.org/DamienMcKenna/metatag_d8.git"

projects[pathauto][type] = "module"
projects[pathauto][download][type] = "git"
projects[pathauto][download][branch] = 8.x-1.x
projects[pathauto][download][url] = "https://github.com/md-systems/pathauto.git"

projects[payment_datatrans][type] = "module"
projects[payment_datatrans][download][type] = "git"
projects[payment_datatrans][download][branch] = master
projects[payment_datatrans][download][url] = "https://github.com/md-systems/datatrans.git"

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

projects[search_api_solr][type] = "module"
projects[search_api_solr][download][type] = "git"
projects[search_api_solr][download][branch] = 8.x-1.x
projects[search_api_solr][download][url] = "https://github.com/amateescu/search_api_solr.git"

projects[swiftmailer][type] = "module"
projects[swiftmailer][download][type] = "git"
projects[swiftmailer][download][branch] = 8.x-1.x
projects[swiftmailer][download][url] = "https://github.com/webflo/drupal-swiftmailer"

projects[tmgmt_mygengo][type] = "module"
projects[tmgmt_mygengo][download][type] = "git"
projects[tmgmt_mygengo][download][branch] = 8.x-1.x
projects[tmgmt_mygengo][download][url] = "https://github.com/das-peter/tmgmt_mygengo.git"

projects[ultimate_cron][type] = "module"
projects[ultimate_cron][download][type] = "git"
projects[ultimate_cron][download][branch] = 8.x-2.x
projects[ultimate_cron][download][url] = "https://github.com/md-systems/ultimate_cron.git"

projects[views_custom_cache_tag][type] = "module"
projects[views_custom_cache_tag][download][type] = "git"
projects[views_custom_cache_tag][download][branch] = 8.x-1.x
projects[views_custom_cache_tag][download][url] = "https://github.com/md-systems/views_custom_cache_tag.git"
