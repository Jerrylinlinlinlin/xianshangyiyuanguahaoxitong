package com.observer;

import com.entity.DictionaryEntity;
import java.util.List;

public interface DictionaryObserver {
    void update(List<DictionaryEntity> dictionaryEntities);
}