package com.observer;

import com.entity.DictionaryEntity;
import java.util.List;

public interface DictionarySubject {
    void registerObserver(DictionaryObserver observer);
    void removeObserver(DictionaryObserver observer);
    void notifyObservers(List<DictionaryEntity> dictionaryEntities);
}