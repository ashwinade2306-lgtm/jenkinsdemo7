# Pull the Base image
FROM python:3.14-slim
# Install streamlit
RUN pip install streamlit
# set working directory
WORKDIR /var
# copy file
COPY etl.py .
# Expose streamlit
EXPOSE 8501
# Run streamlit app
CMD ["streamlit", "run", "etl.py"]