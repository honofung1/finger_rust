# This tells docker to use the Rust official image
FROM rust:1.67

WORKDIR /Users/honofung/rust-projects/fingerrust
# Copy the files in your machine to the Docker image
COPY . .

# Build your program for release
RUN cargo install --path .

# Run the binary
CMD ["myapp"]