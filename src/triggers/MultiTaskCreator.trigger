trigger MultiTaskCreator on Account (after insert) {

	for (Account acc : Trigger.new) {
		if (acc.MSP__c != null) {
			// Step 1: Create a list of all selected items
			List<String> selectedItems = new List<String>();
			selectedItems = acc.MSP__c.split(';');
			System.debug('Items selected: ' + selectedItems);

			// Step2: Create a task for each selected item
			List<Task> tasksToCreate = new List<Task>();
			for (String item : selectedItems) {
				System.debug('Creating a new task for item: ' + item);
				Task myTask = new Task();
				myTask.Subject = item;
				myTask.WhatId = acc.Id;
				tasksToCreate.add(myTask);
			}
			insert tasksToCreate;
		}
	}

}