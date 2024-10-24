#!/usr/bin/env python3
"""8-all module"""


def list_all(mongo_collection):
    """lists all documents in a collection
    """

    docs = []
    for doc in mongo_collection.find():
        if doc:
            docs.append(doc)
    return docs
