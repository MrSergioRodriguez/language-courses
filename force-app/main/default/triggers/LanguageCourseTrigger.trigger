trigger LanguageCourseTrigger on Language_Course__c (before insert, after update, after delete) {
    System.debug('LanguageCourseTrigger fired');

    if (Trigger.isInsert) {
        System.debug('Insert context');
        for (Language_Course__c course : Trigger.new) {
            System.debug('Inserted course: ' + course);
        }
    }

    if (Trigger.isUpdate) {
        System.debug('Update context');
        for (Language_Course__c course : Trigger.new) {
            System.debug('Updated course: ' + course);
        }
    }

    if (Trigger.isDelete) {
        System.debug('Delete context');
        for (Language_Course__c course : Trigger.old) {
            System.debug('Deleted course: ' + course);
        }
    }
}