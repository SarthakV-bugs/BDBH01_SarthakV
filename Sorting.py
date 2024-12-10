### Sorting
import random

### Selection sort
def selection_sort(a):
    l=len(a)
    for i in range(0,l-1):
        mi = i
        for j in range(i+1,l):
            if a[j] < a[mi]:
                mi =j
        a[i],a[mi]=a[mi],a[i]
    return a

def main():
    a = [ random.randint(0,100) for _ in range(1,10) ]
    print(a)
    print(selection_sort(a))

if __name__ == '__main__':
    main()


### Bubble sort
def bubble_sort(a):
    l=len(a)
    for i in range(0,l):
        for j in range(l-1,i,-1):
            if a[j-1] > a[j]:
                a[j],a[j-1]=a[j-1],a[j]
    return a

def main():
     a = [ random.randint(0,100) for _ in range(1,10) ]
     print(a)
     print(bubble_sort(a))

if __name__ == '__main__':
     main()

### Insertion sort
def insertion_sort(a):
    l=len(a)
    for j in range(1,l):
        key = a[j]
        i = j - 1
        while i>=0 and a[i]>key:
            a[i+1] = a[i]
            i = i-1
        a[i+1] = key
    return a

def main():
    a = [ random.randint(0,100) for _ in range(0,10)]
    print(a)
    print(insertion_sort(a))
if __name__ == '__main__':
     main()

### Merge sort

def merge_sort(a, p, r):
    if p < r:
        q = (p + r) // 2
        merge_sort(a, p, q)
        merge_sort(a, q + 1, r)
        merge(a, p, q, r)

    return a

def merge(a, p, q, r):

    le=[]
    ri=[]

    for i in range(p, q+1):
        le.append(a[i])
    for j in range(q+1, r+1):
        ri.append(a[j])

    le.append(1e10)
    ri.append(1e10)
    i = 0
    j = 0

    for k in range(p, r + 1):
        if le[i] <= ri[j]:
            a[k] = le[i]
            i += 1
        else:
            a[k] = ri[j]
            j += 1


def main():
    a = [random.randint(0, 100) for _ in range(0, 10)]
    print(a)
    l = len(a)
    p = 0
    r = l -1
    sorted_a = merge_sort(a, p, r)
    print(sorted_a)


if __name__ == '__main__':
    main()

### Quicksort
def quick_sort(a,p,r):
    if p<r:
        q = partition(a,p,r)
        quick_sort(a,p,q-1)
        quick_sort(a,q+1,r)

def partition(a,p,r):
    x = a[p]
    i = p
    for j in range(p+1,r+1):
        if a[j] <= x:
            i += 1
            a[i],a[j] = a[j],a[i]
    a[i],a[p]=a[p],a[i]
    return i

def main():
    a = [random.randint(1,100) for i in range(0,10)]
    print(a)
    l = len(a)
    p = 0
    r = l-1
    quick_sort(a,p,r)
    print(a)

if __name__ == '__main__':
    main()



