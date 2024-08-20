CREATE VIEW view_settings AS SELECT accounts._id AS account_id,accounts.account_name AS account_name,accounts.account_type AS account_type,accounts.data_set AS data_set,ungrouped_visible,should_sync FROM accounts
/* view_settings(account_id,account_name,account_type,data_set,ungrouped_visible,should_sync) */;
CREATE TRIGGER view_settings_update INSTEAD OF UPDATE ON view_settings BEGIN UPDATE accounts SET ungrouped_visible = NEW.ungrouped_visible, should_sync = NEW.should_sync WHERE _id = OLD.account_id; END;
