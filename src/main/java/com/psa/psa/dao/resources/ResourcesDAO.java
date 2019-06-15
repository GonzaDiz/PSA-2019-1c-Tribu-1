package com.psa.psa.dao.resources;

import com.psa.psa.model.resources.Resource;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public class ResourcesDAO {

    private Map<Integer, Resource> resources = new HashMap();

    public void save(Resource resource) {
        this.resources.put(resource.getId(), resource);
    }

    public Optional<Resource> getById(Integer id) {
        return Optional.ofNullable(this.resources.get(id));
    }

    public Collection<Resource> getAll() {
        return this.resources.values();
    }

    public Resource createNewResource(String name, Long cuit) {
        Resource newResource = new Resource(name, cuit);
        newResource.setId(resources.size());
        resources.put(newResource.getId(), newResource);

        return newResource;
    }
}
