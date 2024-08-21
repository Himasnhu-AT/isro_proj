Contacts db: [Db Diagram View](https://dbdiagram.io/d/ContactsOriginalDb-66c52f0ea346f9518c9ded50)

# Database Schema

## Table: `data`

| Column                                    | Type     | Constraints                          |
| ----------------------------------------- | -------- | ------------------------------------ |
| `_id`                                     | INTEGER  | `PRIMARY KEY`                        |
| `package_id`                              | INTEGER  | `REFERENCES package(_id)`            |
| `mimetype_id`                             | INTEGER  | `REFERENCES mimetype(_id)`           |
| `raw_contact_id`                          | INTEGER  | `REFERENCES raw_contacts(_id)`       |
| `hash_id`                                 | TEXT     |                                      |
| `is_read_only`                            | INTEGER  | `DEFAULT 0`                          |
| `is_primary`                              | INTEGER  | `DEFAULT 0`                          |
| `is_super_primary`                        | INTEGER  | `DEFAULT 0`                          |
| `data_version`                            | INTEGER  | `DEFAULT 0`                          |
| `data1`                                   | TEXT     |                                      |
| `data2`                                   | TEXT     |                                      |
| `data3`                                   | TEXT     |                                      |
| `data4`                                   | TEXT     |                                      |
| `data5`                                   | TEXT     |                                      |
| `data6`                                   | TEXT     |                                      |
| `data7`                                   | TEXT     |                                      |
| `data8`                                   | TEXT     |                                      |
| `data9`                                   | TEXT     |                                      |
| `data10`                                  | TEXT     |                                      |
| `data11`                                  | TEXT     |                                      |
| `data12`                                  | TEXT     |                                      |
| `data13`                                  | TEXT     |                                      |
| `data14`                                  | TEXT     |                                      |
| `data15`                                  | TEXT     |                                      |
| `data_sync1`                              | TEXT     |                                      |
| `data_sync2`                              | TEXT     |                                      |
| `data_sync3`                              | TEXT     |                                      |
| `data_sync4`                              | TEXT     |                                      |
| `carrier_presence`                        | INTEGER  | `DEFAULT 0`                          |
| `is_preferred_phone_account_migration_pending` | INTEGER | `DEFAULT 0`                          |
| `preferred_phone_account_component_name`  | TEXT     |                                      |
| `preferred_phone_account_id`              | TEXT     |                                      |

## Table: `raw_contacts`

| Column                                    | Type     | Constraints                          |
| ----------------------------------------- | -------- | ------------------------------------ |
| `_id`                                     | INTEGER  | `PRIMARY KEY`                        |
| `account_id`                              | INTEGER  | `REFERENCES accounts(_id)`           |
| `sourceid`                                | TEXT     |                                      |
| `backup_id`                               | TEXT     |                                      |
| `raw_contact_is_read_only`                | INTEGER  | `DEFAULT 0`                          |
| `version`                                 | INTEGER  | `DEFAULT 1`                          |
| `dirty`                                   | INTEGER  | `DEFAULT 0`                          |
| `deleted`                                 | INTEGER  | `DEFAULT 0`                          |
| `metadata_dirty`                          | INTEGER  | `DEFAULT 0`                          |
| `contact_id`                              | INTEGER  | `REFERENCES contacts(_id)`           |
| `aggregation_mode`                        | INTEGER  | `DEFAULT 0`                          |
| `aggregation_needed`                      | INTEGER  | `DEFAULT 1`                          |
| `custom_ringtone`                         | TEXT     |                                      |
| `send_to_voicemail`                       | INTEGER  | `DEFAULT 0`                          |
| `x_times_contacted`                       | INTEGER  | `DEFAULT 0`                          |
| `x_last_time_contacted`                   | INTEGER  |                                      |
| `times_contacted`                         | INTEGER  | `DEFAULT 0`                          |
| `last_time_contacted`                     | INTEGER  |                                      |
| `starred`                                 | INTEGER  | `DEFAULT 0`                          |
| `pinned`                                  | INTEGER  | `DEFAULT 0`                          |
| `display_name`                            | TEXT     |                                      |
| `display_name_alt`                        | TEXT     |                                      |
| `display_name_source`                     | INTEGER  | `DEFAULT 0`                          |
| `phonetic_name`                           | TEXT     |                                      |
| `phonetic_name_style`                     | TEXT     |                                      |
| `sort_key`                                | TEXT     | `COLLATE PHONEBOOK`                  |
| `phonebook_label`                         | TEXT     |                                      |
| `phonebook_bucket`                        | INTEGER  |                                      |
| `sort_key_alt`                            | TEXT     | `COLLATE PHONEBOOK`                  |
| `phonebook_label_alt`                     | TEXT     |                                      |
| `phonebook_bucket_alt`                    | INTEGER  |                                      |
| `name_verified`                           | INTEGER  | `DEFAULT 0`                          |
| `sync1`                                   | TEXT     |                                      |
| `sync2`                                   | TEXT     |                                      |
| `sync3`                                   | TEXT     |                                      |
| `sync4`                                   | TEXT     |                                      |

## Table: `contacts`

| Column                                    | Type     | Constraints                          |
| ----------------------------------------- | -------- | ------------------------------------ |
| `_id`                                     | INTEGER  | `PRIMARY KEY`                        |
| `name_raw_contact_id`                     | INTEGER  | `REFERENCES raw_contacts(_id)`       |
| `photo_id`                                | INTEGER  | `REFERENCES data(_id)`               |
| `photo_file_id`                           | INTEGER  | `REFERENCES photo_files(_id)`        |
| `custom_ringtone`                         | TEXT     |                                      |
| `send_to_voicemail`                       | INTEGER  | `DEFAULT 0`                          |
| `x_times_contacted`                       | INTEGER  | `DEFAULT 0`                          |
| `x_last_time_contacted`                   | INTEGER  |                                      |
| `times_contacted`                         | INTEGER  | `DEFAULT 0`                          |
| `last_time_contacted`                     | INTEGER  |                                      |
| `starred`                                 | INTEGER  | `DEFAULT 0`                          |
| `pinned`                                  | INTEGER  | `DEFAULT 0`                          |
| `has_phone_number`                        | INTEGER  | `DEFAULT 0`                          |
| `lookup`                                  | TEXT     |                                      |
| `status_update_id`                        | INTEGER  | `REFERENCES data(_id)`               |
| `contact_last_updated_timestamp`          | INTEGER  |                                      |

## Table: `accounts`

| Column                                    | Type     | Constraints                          |
| ----------------------------------------- | -------- | ------------------------------------ |
| `_id`                                     | INTEGER  | `PRIMARY KEY`                        |
| `account_name`                            | TEXT     |                                      |
| `account_type`                            | TEXT     |                                      |
| `data_set`                                | TEXT     |                                      |
| `sim_slot_index`                          | INTEGER  |                                      |
| `sim_ef_type`                             | INTEGER  |                                      |
| `ungrouped_visible`                       | INTEGER  | `DEFAULT 0`                          |
| `should_sync`                             | INTEGER  | `DEFAULT 1`                          |
| `x_is_default`                            | INTEGER  | `DEFAULT 0`                          |

## Table: `mimetype`

| Column                                    | Type     | Constraints                          |
| ----------------------------------------- | -------- | ------------------------------------ |
| `_id`                                     | INTEGER  | `PRIMARY KEY`                        |
| `mimetype`                                | TEXT     | `UNIQUE`, `NOT NULL`                 |

## Table: `package`

| Column                                    | Type     | Constraints                          |
| ----------------------------------------- | -------- | ------------------------------------ |
| `_id`                                     | INTEGER  | `PRIMARY KEY`                        |
| `package`                                 | TEXT     | `NOT NULL`                           |

## Table: `photo_files`

| Column                                    | Type     | Constraints                          |
| ----------------------------------------- | -------- | ------------------------------------ |
| `_id`                                     | INTEGER  | `PRIMARY KEY`                        |
| `height`                                  | INTEGER  | `NOT NULL`                           |
| `width`                                   | INTEGER  | `NOT NULL`                           |
| `filesize`                                | INTEGER  | `NOT NULL`                           |
