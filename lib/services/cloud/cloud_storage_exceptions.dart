class CloudStorageException implements Exception {
  const CloudStorageException();
}

// C
class CouldNotCreateNoteException extends CloudStorageException {}

// R
class CouldNotGetAllNotesException extends CloudStorageException {}

// U
class CouldNotUpdateNoteException extends CloudStorageException {}

// D
class CouldNoteDeleteNoteException extends CloudStorageException {}
