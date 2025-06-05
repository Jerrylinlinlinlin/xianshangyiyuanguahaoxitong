package com.observer;

import com.entity.DictionaryEntity;
import java.util.ArrayList;
import java.util.List;

public class DictionaryUpdateSubject implements DictionarySubject {
    private List<DictionaryObserver> observers = new ArrayList<>();

    @Override
    public void registerObserver(DictionaryObserver observer) {
        observers.add(observer);
    }

    @Override
    public void removeObserver(DictionaryObserver observer) {
        observers.remove(observer);
    }

    @Override
    public void notifyObservers(List<DictionaryEntity> dictionaryEntities) {
        for (DictionaryObserver observer : observers) {
            observer.update(dictionaryEntities);
        }
    }
}