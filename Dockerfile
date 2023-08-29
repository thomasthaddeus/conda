# Start from the Anaconda3 base image
FROM continuumio/anaconda3

# Install Jupyter
RUN conda install jupyter -y --quiet

# Create a directory for notebooks
RUN mkdir -p /opt/notebooks

# Set the working directory
WORKDIR /opt/notebooks

# Expose the port Jupyter will run on
EXPOSE 8888

# Command to run Jupyter
CMD ["jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
