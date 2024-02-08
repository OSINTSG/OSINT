# GoogleSearchQuery.py
from googlesearch import search

def google_search(query, num_results=5):
    results = []
    try:
        for result in search(query, num_results=num_results, stop=num_results):
            results.append(result)
    except Exception as e:
        results.append(f"Error: {str(e)}")

    return results

def main():
    # Get user input
    user_query = input("Type your Google search query: ")

    # Perform Google search
    search_results = google_search(user_query)

    # Display the search results
    if search_results:
        print("Search Results:")
        for i, result in enumerate(search_results, start=1):
            print(f"{i}. {result}")
    else:
        print("No search results found.")

if __name__ == "__main__":
    main()
