import type { DateValue } from "@internationalized/date";

export type Filter = {
  name: string;
  args: string[];
};

export type AppliedFilter = Filter & {
  not: boolean;
};

export const filters = {
  before: {
    name: "before",
    args: ["date"]
  },
  after: {
    name: "after",
    args: ["date"]
  },
  endsBefore: {
    name: "endsBefore",
    args: ["date"]
  },
  endsAfter: {
    name: "endsAfter",
    args: ["date"]
  },
  summaryContains: {
    name: "summaryContains",
    args: ["string"]
  },
  descriptionContains: {
    name: "descriptionContains",
    args: ["string"]
  },
  locationContains: {
    name: "locationContains",
    args: ["string"]
  },
  organizerContains: {
    name: "organizerContains",
    args: ["string"]
  },
  fieldContains: {
    name: "fieldContains",
    args: ["string (field)", "string (value)"]
  },
  summaryContainsIgnoreCase: {
    name: "summaryContainsIgnoreCase",
    args: ["string"]
  },
  descriptionContainsIgnoreCase: {
    name: "descriptionContainsIgnoreCase",
    args: ["string"]
  },
  locationContainsIgnoreCase: {
    name: "locationContainsIgnoreCase",
    args: ["string"]
  },
  organizerContainsIgnoreCase: {
    name: "organizerContainsIgnoreCase",
    args: ["string"]
  },
  fieldContainsIgnoreCase: {
    name: "fieldContainsIgnoreCase",
    args: ["string (field)", "string (value)"]
  }
} as Record<string, Filter>;

export function unix(dateValue: DateValue): number {
  return Math.floor(dateValue.toDate("UTC").getTime() / 1000);
}

// I miss Haskell already
export function decamel(str: string): string[] {
  const result: string[] = [];
  for (const char of str) {
    const code = char.charCodeAt(0);
    if (code >= "A".charCodeAt(0) && code <= "Z".charCodeAt(0)) {
      result.push(char.toLowerCase());
      continue;
    }

    if (result.length == 0) {
      result.push(char);
    } else {
      result[result.length - 1] += char;
    }
  }
  return result;
}
