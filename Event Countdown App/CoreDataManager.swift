//
//  CoreDataManager.swift
//  Event Countdown App
//
//  Created by Kaiserdem on 08.04.2021.
//

import CoreData
import UIKit

final class CoreDataManager {
    
    lazy var persistentConteiner: NSPersistentContainer = {
        let persistentConteiner = NSPersistentContainer(name: "EventsApp")
        persistentConteiner.loadPersistentStores { (_, error) in
            print(error?.localizedDescription ?? "")
        }
        return persistentConteiner
    }()
    
    var moc: NSManagedObjectContext {
        persistentConteiner.viewContext
    }
    
    func saveEvent(name: String, date: Date, image: UIImage) {
        let event = Event(context: moc)
        event.setValue(name, forKey: "name")
        let imageData = image.jpegData(compressionQuality: 1)
        event.setValue(imageData, forKey: "image")
        event.setValue(date, forKey: "date")
        
        do {
            try moc.save()
        } catch {
            print(error)
        }
    }
    
    func fetchEvents() -> [Event] {
        
        do {
            let fetchRequest = NSFetchRequest<Event>(entityName: "Event")
            let event = try moc.fetch(fetchRequest)
            return event
        } catch {
            print(error)
            return []
        }
    }
}
