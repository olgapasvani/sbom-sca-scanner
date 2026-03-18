# 1. Χρησιμοποιούμε μια επίσημη εικόνα που έχει έτοιμο τον compiler της C (GCC)
FROM gcc:latest

# 2. Φτιάχνουμε έναν φάκελο εργασίας μέσα στο container (σαν να ανοίγουμε ένα νέο φάκελο)
WORKDIR /usr/src/app

# 3. Αντιγράφουμε το αρχείο hello.c από το GitHub σου, μέσα στο container
COPY hello.c .

# 4. Κάνουμε compile το πρόγραμμα (φτιάχνουμε το εκτελέσιμο 'myapp')
RUN gcc -o myapp hello.c

# 5. Λέμε στο container ποια εντολή να τρέξει όταν ξεκινήσει
CMD ["./myapp"]
